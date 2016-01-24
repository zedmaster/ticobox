<div id="modal-pagamento" class="modal fade" role="dialog"  >
    <div class="modal-dialog  modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <span class="modal-title">Pagamento</span>
                    <button type="button" class="btn btn-default pull-right" style="margin-right: 30px;" aria-label="Left Align" data-toggle="modal" data-target="#modal-cliente">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    </button>

                    <span id="txt-cliente" class="navbar-text pull-right">Avulso</span>

            </div>
            <div class="modal-body">

                <div class="row row-no-padding">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-pagamento-tipo" data-nome="CRÉDITO">CRÉDITO</button>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-pagamento-tipo" data-nome="DÉBITO">DÉBITO</button>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-pagamento-tipo" data-nome="DINHEIRO">DINHEIRO</button>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-pagamento-tipo" data-nome="VOUCHER">VOUCHER</button>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-pagamento-tipo" data-nome="CHEQUE">CHEQUE</button>
                    </div>
                </div>

                <div class="row row-no-padding">
                    <aside class="col-sm-4 aside-modal">
                        <div class="row modal-faixa bg-primary vertical-align row-no-padding text-center">
                            <div class="col-xs-12 col-sm-12"><strong>PAGAMENTOS RECEBIDOS</strong></div>
                        </div>

                        <div class="row row-no-padding">
                            <div class="col-xs-5 ">Dinheiro</div>
                            <div class="col-xs-5 text-right">100,00</div>
                            <div class="col-xs-2 text-right">
                                <button type="button" class="btn btn-sm pull-right" aria-label="Left Align" >
                                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                        <div class="row row-no-padding">
                            <div class="col-xs-5 ">Débito</div>
                            <div class="col-xs-5 text-right">100,00</div>
                            <div class="col-xs-2 text-right">
                                <button type="button" class="btn btn-sm pull-right" aria-label="Left Align" >
                                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>


                        <div class="row modal-faixa bg-primary vertical-align row-no-padding text-center">
                            <div class="col-xs-5 col-sm-5 text-left"><strong>Desconto</strong></div>
                            <div class="col-xs-5 col-sm-5 text-right"><strong class="pull-right">10,00%</strong></div>
                            <div class="col-xs-2 col-sm-2">
                                <button type="button" class="btn btn-default pull-right" aria-label="Left Align" data-toggle="modal" data-target="#modal-desconto">
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>

                        <div class="row row-no-padding">
                            <div class="col-xs-7 "><strong>Total Pago</strong></div>
                            <div class="col-xs-5 text-right"><strong>200,00</strong></div>
                        </div>
                        <div class="row row-no-padding">
                            <div class="col-xs-7 "><strong>Saldo Devedor</strong></div>
                            <div class="col-xs-5 text-right"><strong>400,00</strong></div>
                        </div>
                        <div class="row row-no-padding">
                            <div class="col-xs-7 "><strong>Troco</strong></div>
                            <div class="col-xs-5 text-right"><strong>100,00</strong></div>
                        </div>

                        <div class="row modal-faixa bg-primary vertical-align row-no-padding">
                            <div class="col-xs-6 col-sm-6"><strong>Total a pagar</strong></div>
                            <div class="col-xs-6 col-sm-6 text-right"><strong class="pull-right">600,00</strong></div>
                        </div>

                        <div class="row row-no-padding">
                            <div class="col-xs-6 col-sm-6 center">
                                <button type="button" class="btn btn-lg">Finalizar</button>
                            </div>
                        </div>

                    </aside>

                    <section class="col-sm-8 section-modal">


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

                    </section>
                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Voltar</button>
                    <button type="button" class="btn btn-primary">Finalizar</button>
                </div>

            </div>
        </div>

    </div>
</div>