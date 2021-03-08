<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClassroomPrestestUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('classroom_pretest_users', function (Blueprint $table) {
            $table->id('cpu_id');
            $table->foreignId('cls_id')->nullable()->comment('แหล่งข้อมูลใด');
            $table->foreignId('id')->nullable()->comment('แหล่งข้อมูลใด');
            $table->foreignId('pt_id')->nullable()->comment('แหล่งข้อมูลใด');
            $table->integer('cpu_score');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('classroom_pretest_users');
    }
}

