<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalabe=no">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="icon" href="{{ asset('img/logo.png') }}">
    <meta name="description" content="{{ config('app.name', 'Laravel') }} - app de delivery">
    <meta name="theme-color" content="#FFFFFF" />

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    <!-- PWA Manifest -->
    <link rel="manifest" href="{{ asset('manifest.json') }}">

    <!-- iOS meta tags and icons -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="{{ config('app.name', 'Laravel') }}">
    <link rel="apple-touch-icon" href="{{ asset('img/logo.png') }}">


    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <!-- Efeito -->
    <script src="{{ asset('js/efeito.js') }}"></script>
    
    <!-- Styles -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/estilo.css') }}" rel="stylesheet">
    <style>
    @media only screen and (max-width : 576px)
    {
        .mobile-card-container > .row {
            overflow-x: auto;
        }
    }
    </style>

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>
<div id="app">

    <main class="py-4">
        @yield('content')
    </main>


<footer>
    <div class="row">
        <div class="col-3 text-center">
            <a href="{{ url('/') }}"><i class="fas fa-home"></i><h2>Início</h2></a>

        </div>
        <div class="col-3 text-center">
            <a href="{{ route('login') }}"><i class="far fa-user-circle"></i><h2>Conta</h2></a>            
        </div>
        <div class="col-3 text-center">
           <a href="{{ url('/pedidos') }}" ><i class="far fa-list-alt"></i><h2>Pedidos</h2></a>
        </div>
        <div class="col-3 text-center">
            <a href="{{ url('/carrinho') }}"><i class="fas fa-shopping-cart"></i><h2>Carrinho</h2></a><h3>1</h3>
        </div>        
    </div>
</footer>
</div>
</div>
</body>
</html>
