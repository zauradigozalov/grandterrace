<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- PAGE settings -->
    <title>Grand Terrace Menu</title>
    <!-- CSS dependencies -->
    <script data-pace-options='{ "elements": { "selectors": [".selector"] }, "startOnPageLoad": false }' src="/js/pace.min.js"></script>

    <link rel="stylesheet" href="/css/pace-theme-center-radar.css" type="text/css">
    <link rel="stylesheet" href="/assets/css/custom-fonts.css" type="text/css">
    <link rel="stylesheet" href="/assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/assets/wireframe.css">
</head>

<body style="background-image:url('/wood-wallpapers.jpg'); background-size: cover; background-position: center center; ">



<div class="">
    <div class="container py-4">

    </div>
</div>
<div class="text-center">
    <div class="container">



        @yield('container')




    </div>
</div>
<footer></footer>
<div class="py-5"></div>
<nav class="navbar navbar-expand-md fixed-bottom bg-danger text-uppercase text-center navbar-dark">
    <div class="container">

        @php
            $locale = Illuminate\Support\Facades\App::getLocale();

            $array = explode("/", $_SERVER['REQUEST_URI']);
            unset($array[1]);
            $text = "".implode("/", $array);


        @endphp

        <a class="navbar-brand" href="/az{{$text}}">
            <img src="/assets/styleguide/az.png" width="30" height="30" class="d-inline-block align-top" alt="">&nbsp;AZ</a>
        <a class="navbar-brand" href="/en{{$text}}">
            <img src="/assets/styleguide/en.png" width="30" height="30" class="d-inline-block align-top" alt="">&nbsp;EN</a>
        <a class="navbar-brand" href="/ru{{$text}}">
            <img src="/assets/styleguide/ru.png" width="30" height="30" class="d-inline-block align-top" alt="">&nbsp;RU</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
            <a class="btn btn-default navbar-btn" href="/{{$locale}}"><i class="fa fa-fw fa-home fa-lg"></i>{{ __('strings.home') }}</a>
            <a class="btn btn-default navbar-btn" href="javascript:history.go(-1);"><i class="fa fa-fw fa-angle-left fa-lg"></i>{{ __('strings.back') }}</a>
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-danger">
    <div class="container">
        <a class="navbar-brand" href="/{{$locale}}">
            <i class="fa d-inline fa-lg fa-list-ul"></i>
            <b>&nbsp;Grand Terrace Menu</b>
        </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse text-center justify-content-start" id="navbar2SupportedContent"> </div>
    </div>
</nav>


<script src="/js/jquery-3.2.1.slim.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>


<script>
    $( "a" ).click(function() {
        Pace.restart();
    });

</script>
</body>

</html>