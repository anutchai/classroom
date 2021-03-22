<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Profile;
use App\Classroom;
use App\User;
use App\ClassroomDivision;
use App\ClassroomDivisionUser;
use App\ClassroomPretest;
use App\ClassroomPretestUser;
use App\ClassroomSchedule;
use App\ClassroomUser;
use Carbon\Carbon;
use Symfony\Component\HttpKernel\Event\ResponseEvent;

class ScheduleController extends Controller
{
    public function index($id)
    {

        // dd($id);
        $userid = auth()->user()->id;

        $classroom = ClassroomDivision::find($id);

        $owner = Classroom::find($classroom->cls_id);

        //นับจำนวนสมาชิกใน Division
        $countmember = ClassroomDivisionUser::where('div_id', '=', $id)->count();

        if(is_null($owner)){

            return back()->withInput();
        }

        if($userid == $owner->user_id){

            $match = DB::table('classroom_schedules')
                ->where('classroom_schedules.div_id', '=', $id)
                ->get();

        }else{

            // หาว่ามีตารางแข่งขันอะไรบ้าง
            $match = ClassroomSchedule::where(function ($query) use ($id) {
                $query->where('div_id', '=', $id);
            })->where(function ($query) use ($userid){
                $query->where('com_user1', '=', $userid)
                        ->orWhere('com_user2', '=', $userid);
            })->get();

        }

        foreach ($match as $key => $matchs) {
            $first = Profile::where('user_id', $matchs->com_user1)->value('prf_firstname');
            $lastname = Profile::where('user_id', $matchs->com_user1)->value('prf_lastname');
            $matchs->com_realpic1 = Profile::where('user_id', $matchs->com_user1)->value('prf_img');
            $matchs->com_realname1 = $first.' '.$lastname;
            $first = Profile::where('user_id', $matchs->com_user2)->value('prf_firstname');
            $lastname = Profile::where('user_id', $matchs->com_user2)->value('prf_lastname');
            $matchs->com_realpic2 = Profile::where('user_id', $matchs->com_user2)->value('prf_img');
            $matchs->com_realname2 = $first.' '.$lastname;
            $createdate = Carbon::parse($matchs->com_date);
            $matchs->com_date = $createdate->isoFormat('LL');
        }


        // dd($classroom->cls);

        return view('backend.all_schedule',compact('id','match','classroom','owner','countmember'));
    }

    public function create(Request $request, $id)
    {
           // Laravel gives you an array of the selected checkboxes
            $flavours = $request->input('option');

            DB::beginTransaction();
            try{
                //ClassroomDivisionUser::where('div_id',$request->set_id)->delete();
                foreach ($flavours as $key => $value) {
                    echo $value;
                    $data = [
                    [
                        'div_id'=> $request->set_id,
                        'cls_id'=> $id,
                        'user_id'=> $value,
                        'div_usr_total_match'=> 0,
                        'div_usr_total_win'=> 0, 'div_usr_total_draw'=> 0,
                        'div_usr_total_lose'=> 0, 'div_usr_total_point'=> 0],
                    ];
                    ClassroomDivisionUser::insert($data); // Eloquent approach
                }
                DB::commit();
                return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted sucessfully!!');

        } catch (\Exception $e) {
                DB::rollback();
                return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted Failed!!');
        }
    }

    public function store(Request $request, $id)
    {
        DB::beginTransaction();

            try{
                ClassroomDivision::create([
                    'cls_id' => $id,
                    'div_name' => $request->name,
                    'div_role' => $request->role,
                    'div_win' => $request->winpoint,
                    'div_draw' => $request->drawpoint,
                    'div_lose' => $request->losepoint
                ]);
                DB::commit();
                return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted sucessfully!!');
            } catch (\Exception $e) {
                DB::rollback();
                return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted Failed!!');
            }

    }

    public function show($id)
    {
        $member = DB::table('classrooms')
                ->join('classroom_users', 'classroom_users.cls_id', '=', 'classrooms.cls_id')
                ->join('profiles', 'profiles.user_id', '=', 'classroom_users.user_id')
                ->where('classrooms.cls_id', '=', $id)
                ->get();

        $getuser = ClassroomDivisionUser::where('cls_id', '=', $id)
        ->select('user_id')
        ->get()
        ->toArray();

        $division_list = DB::table('classroom_users')
                        ->join('profiles', 'profiles.user_id', '=', 'classroom_users.user_id')
                        ->where('classroom_users.cls_id', '=', $id)
                        ->whereNotIn('classroom_users.user_id', $getuser)
                        ->get();

        $division_member = DB::table('classrooms')
                    ->join('classroom_divisions', 'classroom_divisions.cls_id', '=', 'classrooms.cls_id')
                    ->join('classroom_division_users', 'classroom_division_users.div_id', '=', 'classroom_divisions.div_id')
                    ->join('profiles', 'profiles.user_id', '=', 'classroom_division_users.user_id')
                    ->where('classrooms.cls_id', '=', $id)
                    ->get();

        $classroom = Classroom::find($id);

        $owner = User::find($classroom->user_id);

        //dd($division_member);

        return view('backend.schedule',compact('classroom','member','division_list','division_member','owner'));
    }

    public function edit(Request $request)
    {
        DB::beginTransaction();

        if($request->ajax()){
            try{
                    ClassroomDivision::find($request->id)->update([
                        'cls_id' => $request->cls_id,
                        'div_name' => $request->name,
                        'div_role' => $request->role,
                        'div_win' => $request->win,
                        'div_draw' => $request->draw,
                        'div_lose' => $request->lose
                    ]);
                DB::commit();
                return response()->json($request);
            } catch (\Exception $e) {
                DB::rollback();
                return response()->json(['error' => 'เกิดข้อผิดพลาด '.now()], 500);
            }
        }

    }

    public function update(Request $request)
    {

        DB::beginTransaction();

        if($request->ajax()){
            try{
                if ($request->com_scoreuser1 > $request->com_scoreuser2) {
                    $result = 'Win';
                }else if ($request->com_scoreuser1 < $request->com_scoreuser2){
                    $result = 'Lose';
                }else {
                    $result = 'Draw';
                }

                ClassroomSchedule::find($request->scd_id)->update([
                        'com_scoreuser1' => $request->com_scoreuser1,
                        'com_scoreuser2' => $request->com_scoreuser2,
                        'com_result' => $result,
                        'com_status' => 'Waiting'
                    ]);
                DB::commit();
                return response()->json($request);
            } catch (\Exception $e) {
                DB::rollback();
                return response()->json(['error' => 'เกิดข้อผิดพลาด '.now()], 500);
            }
        }
    }

    public function destroymember($id)
    {
        DB::beginTransaction();
        try{
            ClassroomDivisionUser::where('div_id','=',$id)->delete();
            DB::commit();
            return redirect()->back()->with('message', 'Data deleted successfully');
        } catch (\Exception $e) {
            DB::rollback();
            return $e;
        }
    }

    public function destroydivision($id)
    {
        ClassroomDivision::where('div_id', $id)->delete();
        ClassroomDivisionUser::where('div_id',$id)->delete();
        return redirect()->back()->with('message', 'Data deleted successfully');
    }

    private function roundRobin(array $teams)
    {
        if (count($teams)%2 != 0){
            array_push($teams, 0);
        }
        $away = array_splice($teams,(count($teams)/2));
        $home = $teams;
        for ($i=0; $i < count($home)+count($away)-1; $i++)
        {
            for ($j=0; $j<count($home); $j++)
            {
                $round[$i][$j]["Home"]=$home[$j];
                $round[$i][$j]["Away"]=$away[$j];
            }
            if(count($home)+count($away)-1 > 2)
            {
                $s = array_splice( $home, 1, 1 );
                $slice = array_shift( $s  );
                array_unshift($away,$slice );
                array_push( $home, array_pop($away ) );
            }
        }
        return $round;
    }

    public function createround($id)
    {
        $teams = ClassroomDivisionUser::where('div_id', '=', $id)
        ->select('user_id')
        ->inRandomOrder()
        ->get()
        ->toArray();

        $rounds = $this->roundRobin($teams);

        DB::beginTransaction();
        try{
            // ลบตารางแข่ง
            ClassroomSchedule::where('div_id',$id)->delete();

            // เคลียคะแนนเดิม
            ClassroomDivisionUser::where('div_id',$id)
            ->update([
                'div_usr_total_match'=> 0,
                'div_usr_total_win'=> 0,
                'div_usr_total_draw'=> 0,
                'div_usr_total_lose'=> 0,
                'div_usr_total_point'=> 0,
                'div_usr_rank'=> 0
            ]);

            $week = 1;
            $date = Carbon::now();

            foreach($rounds as $key => $value) {
                foreach($value as $keys => $item) {
                    if (isset($value[$keys]['Home']['user_id']) && isset($value[$keys]['Away']['user_id'])) {
                        // การเช็คเงื่อนไขต้องใช้คำสั่งแบบนี้ เพราะ ว่า มันจะมีรอบที่ไม่มี Array อยู่ เช่น มันจะมีรอบ 1 2 4 5 7 8 รอบที่ 3 หายไปไม่เข้าใจเหมือนกัน
                        // echo ($value[$keys]['Home']['user_id']).' vs '. ($value[$keys]['Away']['user_id']). "<br>";
                        $data = [
                            [
                            'div_id'=> $id,
                            'com_week'=> $week,
                            'com_date'=> $date,
                            'com_user1'=> $value[$keys]['Home']['user_id'],
                            'com_scoreuser1' => 0,
                            'com_user2'=> $value[$keys]['Away']['user_id'],
                            'com_scoreuser2' => 0,
                            'com_result'=> 'Draw',
                            'com_status'=> 'Competing',
                            'created_at' => Carbon::now(),
                            'updated_at' => Carbon::now()
                            ],
                        ];
                            ClassroomSchedule::insert($data); // Eloquent approach
                    }
                }
                    $date->addWeeks(1);
                    $week++;
            }
                DB::commit();
            return redirect()->route('match.show', ['id' => $id])->with('status', 'Data inserted sucessfully!!');

        } catch (\Exception $e) {
                DB::rollback();
            return redirect()->route('match.show', ['id' => $id])->with('status', 'Data inserted Failed!!');
        }
    }

    public function incrementpoint($id)
    {
        $request = ClassroomSchedule::find($id);
        $win = ClassroomDivision::where('div_id', $request->div_id)->value('div_win');
        $draw = ClassroomDivision::where('div_id', $request->div_id)->value('div_draw');
        $lose = ClassroomDivision::where('div_id', $request->div_id)->value('div_lose');

        // if($request->ajax()){
            try{
                if($request->com_result == 'Win'){

                    // ? เพิ่มคะแนนเมื่อชนะ User 1
                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match +1"),
                        'div_usr_total_win' =>  DB::raw("div_usr_total_win +1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->increment('div_usr_total_point', $win);

                    // ? เพิ่มคะแนนเมื่อแพ้ User 2

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match +1"),
                        'div_usr_total_lose' =>  DB::raw("div_usr_total_lose +1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->increment('div_usr_total_point', $lose);

                    // ? Update Status Finnish

                    ClassroomSchedule::find($id)->update(['com_status' => "Finished"]);


                }else if($request->com_result == 'Draw'){

                    // ? เพิ่มคะแนนเมื่อเสมอ User 1

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match +1"),
                        'div_usr_total_draw' =>  DB::raw("div_usr_total_draw +1"),
                    ]);
                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->increment('div_usr_total_point', $draw);

                    // ? เพิ่มคะแนนเมื่อเสมอ User 2

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match +1"),
                        'div_usr_total_draw' =>  DB::raw("div_usr_total_draw +1"),
                    ]);
                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->increment('div_usr_total_point', $draw);

                    // ? Update Status Finnish

                    ClassroomSchedule::find($id)->update(['com_status' => "Finished"]);

                }else{

                    // ? เพิ่มคะแนนเมื่อชนะ User 2

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match +1"),
                        'div_usr_total_lose' =>  DB::raw("div_usr_total_lose +1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->increment('div_usr_total_point', $lose);

                    // ? เพิ่มคะแนนเมื่อแพ้ User 1

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match +1"),
                        'div_usr_total_win' =>  DB::raw("div_usr_total_win +1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->increment('div_usr_total_point', $win);

                    // ? Update Status Finnish

                    ClassroomSchedule::find($id)->update(['com_status' => "Finished"]);
                }
                DB::commit();
                return response()->json($request);
            } catch (\Exception $e) {
                DB::rollback();
                return response()->json($id);
            }
        // }
    }

    public function decrementpoint($id)
    {

        $request = ClassroomSchedule::find($id);
        $win = ClassroomDivision::where('div_id', $request->div_id)->value('div_win');
        $draw = ClassroomDivision::where('div_id', $request->div_id)->value('div_draw');
        $lose = ClassroomDivision::where('div_id', $request->div_id)->value('div_lose');

        // if($request->ajax()){
            try{
                if($request->com_result == 'Win'){

                    // ? เพิ่มคะแนนเมื่อชนะ User 1
                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match -1"),
                        'div_usr_total_win' =>  DB::raw("div_usr_total_win -1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->decrement('div_usr_total_point', $win);

                    // ? เพิ่มคะแนนเมื่อแพ้ User 2

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match -1"),
                        'div_usr_total_lose' =>  DB::raw("div_usr_total_lose -1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->decrement('div_usr_total_point', $lose);

                    // ? Update Status Finnish

                    ClassroomSchedule::find($id)->update(['com_status' => "Waiting"]);


                }else if($request->com_result == 'Draw'){

                    // ? เพิ่มคะแนนเมื่อเสมอ User 1

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match -1"),
                        'div_usr_total_draw' =>  DB::raw("div_usr_total_draw -1"),
                    ]);
                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->decrement('div_usr_total_point', $draw);

                    // ? เพิ่มคะแนนเมื่อเสมอ User 2

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match -1"),
                        'div_usr_total_draw' =>  DB::raw("div_usr_total_draw -1"),
                    ]);
                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->decrement('div_usr_total_point', $draw);

                    // ? Update Status Finnish

                    ClassroomSchedule::find($id)->update(['com_status' => "Waiting"]);

                }else{

                    // ? เพิ่มคะแนนเมื่อชนะ User 2

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match -1"),
                        'div_usr_total_lose' =>  DB::raw("div_usr_total_lose -1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user1]
                    ])
                    ->decrement('div_usr_total_point', $lose);

                    // ? เพิ่มคะแนนเมื่อแพ้ User 1

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->update([
                        'div_usr_total_match' =>  DB::raw("div_usr_total_match -1"),
                        'div_usr_total_win' =>  DB::raw("div_usr_total_win -1"),
                    ]);

                    ClassroomDivisionUser::where([
                        ['div_id', '=', $request->div_id],
                        ['user_id', '=', $request->com_user2]
                    ])
                    ->decrement('div_usr_total_point', $win);

                    // ? Update Status Finnish

                    ClassroomSchedule::find($id)->update(['com_status' => "Reject"]);
                }
                DB::commit();
                return response()->json($request);
                // return response()->json(['success' => 'เปลี่ยนข้อมูลสำเร็จ '.now(), 'name' => $request->com_scoreuser1], 200);
            } catch (\Exception $e) {
                DB::rollback();

                return response()->json($id);
                // return response()->json(['error' => 'เกิดข้อผิดพลาด '.now()], 500);
            }
        // }
    }

    private function createdivision($id,$division){
        // กำหนดชื่อ Division
        $leaguename = array("North Division", "South Division","East Division","West Division","Sun Division","Moon Division","Cloud Division","Star Division","Sky Division");

        // สร้าง Division
        for($i=0;$i<$division;$i++){
            try{
                ClassroomDivision::create([
                    'cls_id' => $id,
                    'div_name' => $leaguename[$i],
                    'div_role' => "",
                    'div_win' => 3,
                    'div_draw' => 1,
                    'div_lose' => 0
                ]);
                DB::commit();
            } catch (\Exception $e) {
                DB::rollback();
                return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted Failed!!');
            }
        }
    }

    private function groupstyle($grouptype,$member){
        if($grouptype == "1"){
            // 1. แบบสุ่ม (มันสุ่มตั้งแต่ตอน Select แล้ว)
        }
        if($grouptype == "2"){
            // 2. แบบสลับเลขลำดับคู่คี่
            $member = $member->sortBy('id');
        }
        if($grouptype == "3"){
            // 3. แบบใช้คะแนนทดสอบก่อนเรียน *
            $member = $member->sortBy('cpu_score');
        }
        if($grouptype == "4"){
            // 4. แบบใช้เวลาการทำทดสอบก่อนเรียน
            $member = $member->sortBy('created_at');
        }
    }

    private function groupingmember($id,$numdivision,$grouptype,$member){

        // เลือก Division ที่เพิ่งสร้างล่าสุด
        $division = ClassroomDivision::where('cls_id', $id)
        ->orderByDesc('div_id')
        ->limit($numdivision)
        ->get();

        // จัดเรียงลำดับตาม ID ใหม่ (เพราะตอนแรกมันเรียงจากมากไปน้อย)
        $division = $division->sort();

        // เรียก fx จัดเรียงสมาชิกใหม่ ตามรูปแบบ
        $this->groupstyle($grouptype,$member);

       // dd($division);

        DB::beginTransaction();
        try{
            // ให้ i เท่ากับ จำนวน division - ลบ เพื่อให้มันตรงกับ อาเรย์
            $i = 0;
            foreach ($member as $members) {

                $data = [
                [
                    'div_id'=> $division[$i]->div_id,
                    'cls_id'=> $id,
                    'user_id'=> $members->id,
                    'div_usr_total_match'=> 0,
                    'div_usr_total_win'=> 0, 'div_usr_total_draw'=> 0,
                    'div_usr_total_lose'=> 0, 'div_usr_total_point'=> 0],
                ];
                ClassroomDivisionUser::insert($data); // Eloquent approach
                $i++;
                // เมื่อ i == 0 ให้มันไปเริ่มต้นนับใหม่
                if ($i == $numdivision){
                    $i = 0;
                }
            }
            DB::commit();
            // return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted sucessfully!!');

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted Failed!!');
        }// end catch

    }

    public function generate(Request $request,$id){

        // ลบของเดิมออกก่อนทั้ง ดิวิชัน และ สมาชิก
        DB::beginTransaction();
        try{
            ClassroomDivisionUser::where('cls_id','=',$id)->delete();
            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
        }
        try{
            ClassroomDivision::where('cls_id','=',$id)->delete();
            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
        }
        // ================================================

        // หารหัสข้อสอบ
        $pt_id = ClassroomPretest::where('cls_id', $id)->value('pt_id');

        // ดึงข้อมูลสมาชิก
        $member = ClassroomPretestUser::where('cls_id',$id)
        ->where('pt_id',$pt_id)
        ->inRandomOrder()
        ->get();

        // นับจำนวนคนใน ลีก
        $number = ClassroomPretestUser::where('cls_id',$id)
        ->where('pt_id',$pt_id)
        ->count();

        // ในกรณีที่ คนแข่งมากกว่าจำนวนสัปดาห์
        if($number >  $request->week){
            // หาจำนวน ดิวิชั่น ว่าต้องมีกี่อัน
            $division = ceil($number / $request->week);
        }else{
            // ถ้าคนน้อยกว่าจำนวนสัปดาห์ ก็กำหนดให้เท่ากับ 1
            $division = 1;
        }

        // เรียก Fx สร้าง Division
        $this->createdivision($id,$division);

        // เพิ่มสมาชิกลงกลุ่ม
        $this->groupingmember($id,$division,$request->radio,$member);

        // ส้งกลับไปที่หน้าเดิม
        return redirect()->route('schedule.show', ['id' => $id])->with('status', 'Data inserted sucessfully!!');

    }
}
