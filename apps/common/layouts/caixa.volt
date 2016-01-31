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
        <h3>CAIXA 01</h3>
        <h4>Colaborador 01</h4>
        <ul data-role="listview">
            <li><a href="#modal-colaborador" data-rel="popup" data-position-to="window" data-transition="pop">Trocar Colaborador</a></li>
            <li><a href="#page-cancelar">Cancelar Vendas</a></li>
            <li><a href="#modal-suporte" data-rel="popup" data-position-to="window" data-transition="pop">Suporte</a></li>
            <li><a href="#modal-sistema" data-rel="popup" data-position-to="window" data-transition="pop">Sistema</a></li>
            <li><a href="#modal-fechar" data-rel="popup" data-position-to="window" data-transition="pop">Fechar Caixa</a></li>
        </ul>
    </div>

    <div data-role="header" data-position="fixed">
        <input type="search" name="pesquisar" id="pesquisar" value="" placeholder="Pesquisar" class="ui-input-search" data-mini="true" data-inline="true">
        <a href="#menu" class="ui-btn-left ui-btn ui-btn-inline ui-mini ui-corner-all ui-btn-icon-left ui-icon-grid">Menu</a>
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
        <a href="#page-pagamento" class="ui-btn ui-corner-all ui-shadow ui-icon-shop ui-btn-icon-left">Receber - R$ 600,00</a>
        <a href="#modal-cliente" class="ui-btn ui-corner-all ui-shadow ui-icon-user ui-btn-icon-left" data-rel="popup" data-position-to="window" data-transition="pop">Avulso</a>
    </div>

    {% include "modal-medida.volt" %}
    {% include "modal-cliente.volt" %}
    {% include "modal-colaborador.volt" %}
    {% include "modal-suporte.volt" %}
    {% include "modal-sistema.volt" %}
    {% include "modal-fechar.volt" %}
</div>

{% include "page-grupo.volt" %}
{% include "page-pagamento.volt" %}
{% include "page-cancelar.volt" %}

</body>
</html>