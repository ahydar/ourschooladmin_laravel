<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
      <link href="{{ asset('css/app.css') }}" rel="stylesheet">
      <title>@yield("title")</title>
    </head>
    <body>
          <div class="container">
              @yield("content");
          </div>

          <script src="{{ asset('js/app.js') }}"></script>
          @yield("script")
    </body>
</html>
