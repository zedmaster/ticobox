<div data-role="page" id="pageone" class="my-page">

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
        <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-right">Receber</a>
    </div>

</div>


{% include "modal-grupo.volt" %}