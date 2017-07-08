<!DOCTYPE html>
<html>
    <head>
        <title>Durandal</title>

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <meta name="format-detection" content="telephone=no"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="apple-touch-startup-image" href="/public/lib/durandal/img/ios-startup-image-landscape.png" media="(orientation:landscape)" />
        <link rel="apple-touch-startup-image" href="/public/lib/durandal/img/ios-startup-image-portrait.png" media="(orientation:portrait)" />
        <link rel="apple-touch-icon" href="/public/lib/durandal/img/icon.png"/>

        <link rel="stylesheet" href="/public/lib/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/public/css/ie10mobile.css" />
        <link rel="stylesheet" href="/public/lib/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="/public/lib/durandal/css/durandal.css" />
        <link rel="stylesheet" href="/public/css/starterkit.css" />

        <script type="text/javascript">
            if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
                var msViewportStyle = document.createElement("style");
                var mq = "@@-ms-viewport{width:auto!important}";
                msViewportStyle.appendChild(document.createTextNode(mq));
                document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
            }
        </script>
    </head>
    <body>
        <div id="applicationHost">
            <div class="splash">
                <div class="message">
                    Durandal Starter Kit
                </div>
                <i class="fa fa-spinner fa-spin"></i>
            </div>
        </div>

        <script src="/public/lib/require/require.js" data-main="app/main"></script>
    </body>
</html>
