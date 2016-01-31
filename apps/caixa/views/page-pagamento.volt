<div data-role="page" id="page-pagamento">

    <div data-role="header" data-position="fixed">
        <a href="#caixa" data-rel="back" class="ui-btn ui-shadow ui-corner-all ui-btn-inline ui-icon-back ui-btn-icon-left">Voltar</a>
        <h1>Pagamento</h1>
    </div>


    <div data-role="main" class="ui-content">
        <div data-role="navbar" data-grid="d">
            <ul data-role="navbar">
                <li><a href="#modal-pagamento-tipo" data-rel="popup" data-position-to="window" data-transition="pop">CRÉDITO</a></li>
                <li><a href="#modal-pagamento-tipo" data-rel="popup" data-position-to="window" data-transition="pop">DÉBITO</a></li>
                <li><a href="#modal-pagamento-tipo" data-rel="popup" data-position-to="window" data-transition="pop">DINHEIRO</a></li>
                <li><a href="#modal-pagamento-tipo" data-rel="popup" data-position-to="window" data-transition="pop">VOUCHER</a></li>
                <li><a href="#modal-pagamento-tipo" data-rel="popup" data-position-to="window" data-transition="pop">CHEQUE</a></li>
            </ul>
        </div>

        <div class="ui-grid-a ui-responsive">
            <div class="ui-block-a">

                <ul data-role="listview" data-inset="true" data-split-icon="delete" id="listview-recebidos">
                    <li data-role="list-divider">PAGAMENTOS RECEBIDOS</li>
                    <li class="li-pagamento"><a href="#">CRÉDITO <span class="ui-li-count">100,00</span></a><a href="#modal-pagamento-del" data-rel="popup" data-position-to="window" data-transition="pop"></a></li>
                    <li class="li-pagamento"><a href="#">DINHEIRO <span class="ui-li-count">50,00</span></a><a href="#modal-pagamento-del" data-rel="popup" data-position-to="window" data-transition="pop"></a></li>
                    <li data-icon="edit"><a href="#modal-desconto" data-rel="popup" data-position-to="window" data-transition="pop">DESCONTO <span class="ui-li-count">10,00 %</span></a></li>
                    <li>TOTAL PAGO <span class="ui-li-count">150,00</span></li>
                    <li>SALDO DEVEDOR <span class="ui-li-count">50,00</span></li>
                    <li>TROCO <span class="ui-li-count">00,00</span></li>
                </ul>

            </div>

            <div class="ui-block-b">
                <table id="grupo-table" data-role="table" >
                    <thead>
                    <tr>
                        <th data-priority="1"></th>
                        <th data-priority="1"></th>
                    </tr>
                    </thead>
                    <tbody>
                    {% for i in 1..3 %}
                        <tr>
                            <td style="width: 80%;">
                                <div>10,00</div>
                                <div>Produto {{ i }}</div>
                            </td>
                            <td>
                                <div>3 UN</div>
                                <div>30,00</div>
                            </td>
                        </tr>
                    {% endfor %}
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div data-role="footer" data-position="fixed">
        <span>TOTAL A PAGAR </span><span> R$ 600,00</span>
            <a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-icon-shop ui-btn-icon-right">Finalizar</a>
    </div>

    {% include "modal-desconto.volt" %}

    {% include "modal-pagamento-tipo.volt" %}

    <div data-role="popup" id="modal-pagamento-del" data-theme="a" class="ui-corner-all"  data-overlay-theme="a" data-theme="a">
        <form>
            <h3>Deseja apagar este pagamento?</h3>
            <div data-role="controlgroup" data-type="horizontal">
                <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b" data-rel="back">Não</a>
                <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline " data-rel="back">Sim</a>
            </div>
        </form>
    </div>
</div>