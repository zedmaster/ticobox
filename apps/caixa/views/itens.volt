<div class="row" id="itens">
    {% for i in 1..12 %}
    <a href="#myModal" data-toggle="modal" class="col-xs-4 col-sm-4 col-md-3 col-lg-2" data-nome="Produto {{ i }}" data-preco="100">
        <div class="thumbnail">
            <img src="/img/no-image.png" class="img-rounded" alt="Produto {{ i }}">
            <span class="price">$ 1.000,00</span>
            <div class="caption">
                <p>Produto {{ i }}</p>
            </div>
        </div>
    </a>
    {% endfor %}
</div>