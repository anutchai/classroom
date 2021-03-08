<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Classroom</title>

    <!-- Css Style -->
    <link rel="stylesheet" href="{{ asset('css/style.css')}}">

    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="{{ asset('lib/bootstrap/css/bootstrap.min.css')}}">

    <!-- owl_carousel -->
    <link rel="stylesheet" href="{{ asset('lib/owl_carousel/assets/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{ asset('lib/owl_carousel/assets/owl.theme.default.min.css')}}">

    <!-- Font Awesome JS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">

    <!-- animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

</head>

<body>

    <section id="sign-in">
        <img class="h-rectangle" src="{{ asset('images/Rectangle/n-1.png')}}" alt="heading-Rectangle">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-5 mx-auto">
                    <div class="card h-100 border-0  shadow">
                        <div class="arrow-back">
                            <a href="{{ route('index') }}">
                                <i class="fas fa-arrow-left fa-lg"></i>
                            </a>
                        </div>
                        <div class="logo text-center p-3">
                            <i class="fas fa-book fa-4x pr-2"></i>
                        </div>
                        <div class="d-block text-center">
                            <h2 class="text-muted font-weight-light text-uppercase">League Learning</h2>
                        </div>
                        <hr class="mb-0">
                        <div class="card-head mb-3 d-block">
                            <nav>
                                <div class="nav nav-pills md-tabs d-flex" id="nav-tab" role="tablist">
                                    <a class="nav-link flex-fill active text-center text-dark" id="pills-sing-in-tab"
                                        data-toggle="tab" href="#pills-sing-in" role="tab" aria-controls="nav-sing-in"
                                        aria-selected="true">Sign in</a>
                                    <a class="nav-link flex-fill text-center text-dark" id="pills-register-tab"
                                        data-toggle="pill" href="#pills-register" role="tab"
                                        aria-controls="pills-register" aria-selected="false">Register</a>
                                </div>
                            </nav>
                        </div>

                        <!-- Sign-in -->
                        <div class="tab-content" id="pills-tabContent">
                            <div class="card-body p-2 p-md-4 tab-pane fade show active" id="pills-sing-in"
                                role="tabpanel" aria-labelledby="pills-sing-in-tab">
                                <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <div class="input-group mb-3 shadow-sm">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text border-0" id="g-email"><i
                                                    class="fas fa-user  text-white"></i></span>
                                        </div>
                                        <input type="text" class="form-control border-0" placeholder="email"
                                            aria-label="email" aria-describedby="g-email"
                                            name="email" value="{{ old('email') }}" required autocomplete="email" autofocus
                                            required>

                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                    </div>
                                    <div class="input-group mb-3 mt-4 shadow-sm">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text border-0" id="g-password"><i
                                                    class="fas fa-key text-white"></i></span>
                                        </div>
                                        <input type="password" class="form-control border-0" id="password"
                                            placeholder="password" aria-label="password" aria-describedby="g-password"
                                            name="password" required autocomplete="current-password">
                                        <span toggle="#password"
                                            class="fas fa-eye-slash field-icon toggle-password"></span>

                                            @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                    </div>
                                    <div class="text-center mt-5 w-100 pl-5 pr-5">
                                        <button type="submit"  class="btn btn-theme btn-block">
                                            Sign in
                                        </button>
                                    </div>
                                </form>
                            </div>

                            <!-- Register -->
                            <div class="card-body p-2 p-md-4 tab-pane fade" id="pills-register" role="tabpanel"
                                aria-labelledby="pills-register-tab">
                                <form method="POST" action="{{ route('register') }}">
                                    @csrf
                                    <div class="input-group mb-3 shadow-sm">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text border-0" id="g-username"><i
                                                    class="fas fa-user  text-white"></i></span>
                                        </div>
                                        <input type="text"  class="form-control border-0"
                                            placeholder="Username" aria-label="Username" aria-describedby="g-username"
                                            maxlength="30" name="name" value="{{ old('name') }}" autocomplete="name" autofocus required>
                                    </div>
                                    <div class="input-group mb-3 shadow-sm">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text border-0" id="g-username"><i
                                                    class="fas fa-user  text-white"></i></span>
                                        </div>
                                        <input type="email" class="form-control border-0"
                                            placeholder="gmail" aria-label="gmail" aria-describedby="g-gmail"
                                            maxlength="30" name="email" value="{{ old('email') }}" required autocomplete="email">
                                    </div>
                                    <div class="input-group mb-3 mt-4 shadow-sm">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text border-0" id="g-password"><i
                                                    class="fas fa-key text-white"></i></span>
                                        </div>
                                        <input type="password" class="form-control border-0" placeholder="Password"
                                            aria-label="password" id="pw"  aria-describedby="g-password"
                                            maxlength="20" name="password" required autocomplete="new-password">
                                        <span toggle="#pw" class="fas fa-eye-slash field-icon toggle-password"></span>
                                    </div>
                                    <div class="input-group mb-3 mt-4 shadow-sm">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text border-0" id="re-password"><i
                                                    class="fas fa-key text-white"></i></span>
                                        </div>
                                        <input type="password" class="form-control border-0" id="repassword"
                                            placeholder="Re-Password" id="re"
                                            aria-label="re-password" aria-describedby="re-password" maxlength="20"
                                            name="password_confirmation" required autocomplete="new-password">
                                        <span toggle="#re" class="fas fa-eye-slash field-icon toggle-password"></span>
                                    </div>
                                    <div class="text-center mt-5 w-100 pl-5 pr-5">
                                        <button type="submit" class="btn btn-theme btn-block">Register</button>
                                    </div>
                                </form>
                            </div>
                            <div class="footer-card text-center">
                                <hr>
                                <small class="pt-2">Copyright © 2020 LEAGUE LEARNING</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Bootstrap core JavaScript -->
    <script src="{{ asset('lib/jquery/jquery.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="{{ asset('lib/bootstrap/js/bootstrap.min.js')}}"></script>

    <!-- owl_carousel core JavaScript -->
    <script src="{{ asset('lib/owl_carousel/owl.carousel.min.js')}}"></script>

    <!-- Style core JavaScript -->
    <script src="{{ asset('js/main.js')}}"></script>

    <!-- WOW -->
    <script src="{{ asset('lib/wow/wow.min.js')}}"></script>
    <script>
        new WOW().init();
    </script>


</body>

</html>
