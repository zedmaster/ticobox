<ul data-role="listview" data-inset="true">
    {% for i in 1..8 %}
    <li>
        <a href="#">
            <img src="/img/no-image.png" class="ui-li-thumb">
            <h2>Produto {{ i }}</h2>
            <p>Apple released iOS 6.1</p>
            <p class="ui-li-aside">iOS</p>
        </a>
    </li>
    {% endfor %}
</ul>


<!--
<div class="row" id="itens">
    {% for i in 1..6 %}
    <a href="#modal-grupo" data-toggle="modal" class="col-xs-4 col-sm-4 col-md-3 col-lg-2" data-nome="Produto {{ i }}" data-preco="100">
        <div class="thumbnail">
            <img src="/img/no-image.png" class="img-rounded" alt="Produto {{ i }}">
            <span class="price">R$ 1.000,00</span>
            <div class="caption">
                <p>Grupo {{ i }}</p>
            </div>
        </div>
    </a>
    {% endfor %}
    {% for i in 1..6 %}
        <a href="#modal-unidade" data-toggle="modal" class="col-xs-4 col-sm-4 col-md-3 col-lg-2" data-nome="Medida {{ i }}" data-preco="100">
            <div class="thumbnail">
                <img src="/img/no-image.png" class="img-rounded" alt="Medida {{ i }}">
                <span class="price">R$ 10,00 Kg</span>
                <div class="caption">
                    <p>Medida {{ i }}</p>
                </div>
            </div>
        </a>
    {% endfor %}
</div>
-->