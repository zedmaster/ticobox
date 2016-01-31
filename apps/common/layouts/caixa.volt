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
    {{ javascript_include('js/caixa.js') }}
    <link href="/img/favicon.png" rel="shortcut icon" type="image/vnd.microsoft.icon">


    <meta name="description" content="Ticobox|Caixa">
    <meta name="author" content="Alexandre Ferreira Martins">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div data-role="page" id="page-caixa">

    <div data-role="panel" id="menu" data-display="push">
        <h2>CAIXA 01</h2>
        <h3>Colaborador 01</h3>
        <ul data-role="listview">
            <li><a href="#">Trocar Colaborador</a></li>
            <li><a href="#">Cancelar Vendas</a></li>
            <li><a href="#">Suporte</a></li>
            <li><a href="#">Sistema</a></li>
            <li><a href="#">Fechar Caixa</a></li>
        </ul>
    </div>

    <div data-role="header" data-position="fixed">
        <a href="#menu" class="ui-btn-left ui-btn ui-btn-inline ui-mini ui-corner-all ui-btn-icon-left ui-icon-grid">Menu</a>
        <h1>Caixa</h1>
    </div>

    <div data-role="main" class="ui-content">
        <div class="ui-grid-a ui-responsive">
            <div class="ui-block-a">
                {% include "compras.volt" %}
            </div>
            <div class="ui-block-b list-itens">
                {% include "itens.volt" %}
            </div>
        </div>
    </div>

    <div data-role="footer" data-position="fixed">
        <span>TOTAL</span><span> R$ 600,00</span>
            <a href="#page-pagamento" class="ui-btn ui-corner-all ui-shadow ui-icon-shop ui-btn-icon-right">Receber</a>
    </div>

    {% include "modal-medida.volt" %}
</div>

{% include "page-grupo.volt" %}

{% include "page-pagamento.volt" %}

</body>
</html>