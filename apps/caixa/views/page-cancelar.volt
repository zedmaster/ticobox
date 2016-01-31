<div data-role="page" id="page-cancelar">

    <div data-role="header" data-position="fixed">
        <a href="#" data-rel="back" class="ui-btn ui-shadow ui-corner-all ui-btn-inline ui-icon-back ui-btn-icon-left">Voltar</a>
        <h1>Cancelar Vendas</h1>
    </div>

    <div data-role="main" class="ui-content">
        <input type="search" name="pesquisar" id="pesquisar" value="" placeholder="Pesquisar"  data-mini="true" data-inline="true">

        <table data-role="table" data-mode="columntoggle" class="ui-responsive ui-shadow" id="myTable">
            <thead>
            <tr>
                <th data-priority="4">Data</th>
                <th data-priority="3">Cliente</th>
                <th data-priority="1">E-mail</th>
                <th data-priority="2">CPF/CNPJ</th>
                <th>Total</th>
                <th>Ação</th>
            </tr>
            </thead>
            <tbody>
            {% for i in 1..20 %}
            <tr>
                <td>10/01/2016</td>
                <td>Nome Completo {{ i }}</td>
                <td>cliente{{ i }}@gmail.com</td>
                <td>03102720955</td>
                <td>1.000,00</td>
                <td>
                    {% if(i is divisibleby(2)) %}
                        <a href="#modal-cancelar-confirmar" class="ui-btn ui-shadow ui-corner-all ui-icon-delete ui-btn-icon-notext ui-mini" data-rel="popup" data-position-to="window" data-transition="pop"></a></td>
                    {% else %}
                        Cancelado
                    {% endif %}
            </tr>
            {% endfor %}
            </tbody>
        </table>

    </div>

    <div data-role="popup" id="modal-cancelar-confirmar" data-theme="a" class="ui-corner-all"  data-overlay-theme="a" data-theme="a">
        <form>
            <h3>Deseja cancelar esta venda?</h3>

            <div data-role="controlgroup" data-type="horizontal">
                <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b" data-rel="back">Não</a>
                <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b" data-rel="back">Sim</a>
            </div>
        </form>
    </div>
</div>
