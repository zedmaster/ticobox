<div class="row" id="itens">
    {% for i in 1..12 %}
    <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2">
        <div class="thumbnail">
            <img src="/img/no-image.png" class="img-rounded" alt="Produto {{ i }}">
            <span class="price">$ 1.000,00</span>
            <div class="caption">
                <p>Produto {{ i }}</p>
            </div>
        </div>
    </div>
    {% endfor %}
</div>