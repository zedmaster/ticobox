<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    {{ get_title() }}
    {{ stylesheet_link('css/ticobox.min.css') }}
    {{ stylesheet_link('css/jquery.mobile.icons.min.css') }}
    {{ stylesheet_link('css/jquery.mobile.structure-1.4.5.min.css') }}
    {{ stylesheet_link('css/jqstyle.css') }}

    {{ javascript_include('js/jquery.min.js') }}
    {{ javascript_include('js/jquery.mobile-1.4.5.min.js') }}
    <link href="/img/favicon.png" rel="shortcut icon" type="image/vnd.microsoft.icon">


    <meta name="description" content="Ticobox|Caixa">
    <meta name="author" content="Alexandre Ferreira Martins">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    {% include "sliding.volt" %}
</body>
</html>