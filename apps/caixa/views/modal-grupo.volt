<div id="modal-grupo" class="modal fade" role="dialog">
    <div class="modal-dialog  modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">

                <div class="row row-no-padding">
                    <aside class="col-sm-4 aside-modal">
                        <div class="row modal-faixa bg-primary vertical-align row-no-padding">
                            <div class="col-xs-6 col-sm-6"><strong>Quantidade</strong></div>
                            <div class="col-xs-6 col-sm-6">
                                <button type="button" class="btn btn-default pull-right" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span>
                                </button>
                                <strong id="m-grupo-qtd" class="pull-right">10</strong>
                                <button type="button" class="btn btn-default pull-right" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>

                        <table class="table table-striped">
                            <tbody>
                            {% for i in 1..12 %}
                                <tr>
                                    <td>
                                        <div class="row row-no-padding">
                                            <div class="col-xs-8 col-sm-9">25,00</div>
                                            <div class="col-xs-4 col-sm-3 text-right">2 UN</div>
                                        </div>
                                        <div class="row row-no-padding">
                                            <div class="col-xs-8 col-sm-9">Produto {{ i }}</div>
                                            <div class="col-xs-4 col-sm-3 text-right">50,00</div>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                            </tbody>
                        </table>
                        <div class="row modal-faixa bg-primary vertical-align row-no-padding">
                            <div class="col-xs-6 col-sm-6"><strong>Total</strong></div>
                            <div class="col-xs-6 col-sm-6 text-right"><strong class="pull-right">450,00</strong></div>
                        </div>
                    </aside>

                    <section class="col-sm-8 section-modal">
                        {% for i in 1..12 %}
                            <a href="#myModal" class="col-xs-4 col-sm-4 col-md-3 col-lg-3" >
                                <div class="thumbnail">
                                    <img src="/img/no-image.png" class="img-rounded" alt="Produto {{ i }}">
                                    <span class="price">$ 100,00</span>
                                    <div class="caption">
                                        <p>Produto {{ i }}</p>
                                    </div>
                                </div>
                            </a>
                        {% endfor %}
                    </section>
                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary">Adicionar</button>
                </div>

            </div>
        </div>

    </div>
</div>