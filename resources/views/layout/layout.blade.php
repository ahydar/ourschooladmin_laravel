<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
      <link href="{{ asset('css/app.css') }}" rel="stylesheet">
      <title>@yield("title")</title>
    </head>
    <body>
          @yield("content");
    </body>
</html>
