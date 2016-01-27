<div data-role="page" id="pageone">
    <div data-role="header" data-position="fixed">
        <a href="#" class="ui-btn-left ui-btn ui-btn-inline ui-mini ui-corner-all ui-btn-icon-left ui-icon-grid">Menu</a>
        <h1>Caixa</h1>
    </div>


        <div class="ui-grid-a ui-responsive">
            <div class="ui-block-a">
                {% include "compras.volt" %}
            </div>
            <div class="ui-block-b">
                {% include "itens.volt" %}
            </div>
        </div>



    <div data-role="footer" data-position="fixed">
        <span>TOTAL</span><span> R$ 600,00</span>
        <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-right">Receber</a>
    </div>

</div>