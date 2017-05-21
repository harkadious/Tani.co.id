<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">

    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="{{ asset('css/icomoon-social.css') }}">
    <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">

    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="{{ asset('font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" >
    <!-- Scripts -->
    <script>
        window.App = {!! json_encode([
            'csrfToken' => csrf_token(),
            'user' => Auth::user(),
            'signedIn' => Auth::check()
        ]) !!};
    </script>

    <style>
        .level { display: flex; align-items: center; }
        .flex { flex: 1; }
        .mr-1 { margin-right: 1em; }
        [v-cloak] { display: none; }
    </style>
</head>
<body>
<div id="app">
    @include ('layouts.nav')

    @yield('content')

    <flash message="{{ session('flash') }}"></flash>
</div>
    @include ('layouts.footer')

<!-- Scripts -->
<script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
