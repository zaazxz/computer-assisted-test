<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Smart Exam | Login</title>

    <link rel="shortcut icon" href="{{ asset('assets/img/brimob2.png') }}" type="image/x-icon">

    <!-- General CSS Files -->
    <link rel="stylesheet" href="{{ asset('assets/modules/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/modules/fontawesome/css/all.min.css') }}">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{ asset('assets/modules/bootstrap-social/bootstrap-social.css') }}">

    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/components.css') }}">
</head>

<body style="background: #e2e8f0">
    <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">

        {{-- Wrapper : Start --}}
        <section class="section">
            <div class="container-fluid card card-primary p-4">

                {{-- Card Logo : Start --}}
                <span class="card-head text-center"
                    style="font-size: 30px; font-weight: bold; letter-spacing: 2px; color: #6777ef">
                    Smart Exam
                </span>
                {{-- Card Logo : End --}}

                {{-- Card Header : Start --}}
                <span class="card-head text-center fs-2">
                    Masukkan Email & Password
                </span>
                {{-- Card Header : End --}}

                {{-- Card Body : Start --}}
                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}" class="needs-validation" novalidate="">
                        @csrf

                        {{-- Email : Start --}}
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input id="email" type="email"
                                class="form-control @error('email') is-invalid @enderror" style="width: 400px"
                                name="email" placeholder="Masukkan Alamat Email" value="{{ old('email') }}"
                                tabindex="1" required autofocus>
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        {{-- Email : End --}}

                        {{-- Password : Start --}}
                        <div class="form-group">
                            <label
                            for="password"
                            class="control-label @error('password') is-invalid @enderror">
                                Password
                            </label>
                            <input
                            id="password"
                            type="password"
                            class="form-control"
                            name="password"
                            placeholder="Masukkan Password"
                            tabindex="2"
                            required>
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        {{-- Password : End --}}

                        <div class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" name="remember" class="custom-control-input" tabindex="3"
                                    id="remember-me">
                                <label class="custom-control-label" for="remember-me">Remember
                                    Me</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                                Login
                            </button>
                        </div>
                    </form>

                </div>
                {{-- Card Body : End --}}


                {{-- Card Example : Start --}}
                {{-- <div class="row d-flex justify-content-center">
                    <div class="col col-xl-10 p-0">
                        <div class="card" style="border-radius: 1rem">
                            <div class="card card-primary">
                            </div>
                        </div>
                    </div>
                </div> --}}
                {{-- Card Example : End --}}

            </div>
        </section>
        {{-- Wrapper : End --}}

    </div>

    <!-- General JS Scripts -->
    <script src="{{ asset('assets/modules/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/modules/popper.js') }}"></script>
    <script src="{{ asset('assets/modules/tooltip.js') }}"></script>
    <script src="{{ asset('assets/modules/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/modules/nicescroll/jquery.nicescroll.min.js') }}"></script>
    <script src="{{ asset('assets/modules/moment.min.js') }}"></script>
    <script src="{{ asset('assets/js/stisla.js') }}"></script>

    <!-- Template JS File -->
    <script src="{{ asset('assets/js/scripts.js') }}"></script>
    <script src="{{ asset('assets/js/custom.js') }}"></script>
</body>

</html>
