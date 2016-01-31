<div data-role="page" id="page-grupo">

    <div data-role="header" data-position="fixed">
        <a href="#" data-rel="back" class="ui-btn ui-shadow ui-corner-all ui-btn-inline ui-icon-back ui-btn-icon-left">Voltar</a>
        <h1>Grupo 1 - R$ 100,00</h1>
    </div>

    <div data-role="main" class="ui-content">
        <div class="ui-grid-a ui-responsive">

            <div class="ui-block-a">

                <label for="currency-controlgroup">Quantidade</label>
                <div data-role="controlgroup" data-type="horizontal">
                    <a href="#" class="ui-btn ui-corner-all ui-icon-plus ui-btn-icon-notext">+</a>
                    <button>6</button>
                    <a href="#" class="ui-btn ui-corner-all ui-icon-minus ui-btn-icon-notext">-</a>
                </div>

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


            <div class="ui-block-b list-itens">
                <ul data-role="listview" data-inset="true" class="list-itens">
                    {% for i in 1..3 %}
                        <li>
                            <a href="#" >
                                <img src="/img/no-image.png" class="ui-li-thumb">
                                <h2>Produto {{ i }}</h2>
                                <p class="ui-li-aside">$ 100,00</p>
                            </a>
                        </li>
                    {% endfor %}
                </ul>
            </div>
        </div>
    </div>

    <div data-role="footer" data-position="fixed">
        <span>TOTAL</span><span> R$ 600,00</span>
            <a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-right">Adicionar</a>
    </div>
</div>
