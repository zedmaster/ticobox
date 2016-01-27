<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {{ get_title() }}
    {{ stylesheet_link('css/ticobox.min.css') }}
    {{ stylesheet_link('css/jquery.mobile.icons.min.css') }}
    {{ stylesheet_link('css/jquery.mobile.structure-1.4.5.min.css') }}
    {{ stylesheet_link('css/jqstyle.css') }}

    {{ javascript_include('js/jquery.min.js') }}
    {{ javascript_include('js/jquery.mobile-1.4.5.min.js') }}


    <link href="/img/favicon.png" rel="shortcut icon" type="image/vnd.microsoft.icon">


    <meta name="description" content="Your invoices">
    <meta name="author" content="Phalcon Team">
</head>
<body>
    <div data-role="page" id="pageone" class="ui-grid-a">
        <div data-role="header">
            <!--<h1>TicoBox</h1>-->
            <img src="/img/logo_{{ modulo }}x25.png" alt="TicoBox"/>
        </div>

        <div data-role="main" class="ui-content">
            {{ content() }}
        </div>

        <div data-role="footer">
            <h1>My Footer</h1>
        </div>
    </div>


</body>
</html>