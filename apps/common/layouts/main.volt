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
    {{ stylesheet_link('css/style.css') }}
    <link href="/img/favicon.png" rel="shortcut icon" type="image/vnd.microsoft.icon">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Your invoices">
    <meta name="author" content="Phalcon Team">
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{ identity['home'] }}"><img src="/img/logo_{{ modulo }}x25.png" alt="TicoBox"/>&nbsp;</a>
            </div>
            <div class="collapse navbar-collapse">
                {{ navigation.toHtml('top') }}
                <p class="navbar-text navbar-right">{{ identity['nome'] }}</p>
            </div><!--/.nav-collapse -->
        </div>
    </nav>

    <div class="container">

        {{ content() }}

        <hr>
        <footer>
            <p>&copy; 2015 by ZedNet Todos os direitos reservados.</p>
        </footer>
    </div> <!-- /container -->
</body>
</html>