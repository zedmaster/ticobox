<ul data-role="listview" data-inset="true" class="list-itens">
    {% for i in 1..4 %}
    <li>
        <a href="#page-grupo" >
            <img src="/img/no-image.png" class="ui-li-thumb">
            <h2>Grupo do Produto {{ i }} da caixa</h2>
            <p class="ui-li-aside">$ 1.000,00</p>
        </a>
    </li>
    {% endfor %}

    {% for i in 1..4 %}
        <li>
            <a href="#modal-medida" data-rel="popup" data-position-to="window" data-transition="pop">
                <img src="/img/no-image.png" class="ui-li-thumb" >
                <h2>Poroduto Medida {{ i }} </h2>
                <p class="ui-li-aside">Kg 100,00</p>
            </a>
        </li>
    {% endfor %}
</ul>