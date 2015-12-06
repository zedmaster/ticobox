<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    {{ get_title() }}
    {{ javascript_include('js/jquery.min.js') }}
    {{ javascript_include('js/jquery-ui.min.js') }}
    {{ javascript_include('js/jquery.maskedinput.min.js') }}
    {{ stylesheet_link('css/jquery-ui.css') }}
    {{ javascript_include('js/bootstrap.min.js') }}
    {{ stylesheet_link('css/bootstrap.min.css') }}
    {{ stylesheet_link('css/caixa.css') }}

    {{ stylesheet_link('css/sliding.css') }}
    <link href="/img/favicon.png" rel="shortcut icon" type="image/vnd.microsoft.icon">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,600,500,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Your invoices">
    <meta name="author" content="Phalcon Team">
</head>
<body>

    {% include "sliding.volt" %}




    <script src="/js/sliding.js"></script>

</body>
</html>