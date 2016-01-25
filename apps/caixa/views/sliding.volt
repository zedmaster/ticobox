<div id="container">

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <button id="btn-toggle" type="button" class="btn btn-default toggle-nav" aria-label="Left Align">
                    <span class="glyphicon glyphicon-th" aria-hidden="true"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Grupos</a></li>
                </ul>
                <form class="navbar-form navbar-left pull-right" role="search">
                    <div class="col-xs-12 col sm-12">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Pesquisar">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                </button>
                                <button type="button" class="btn btn-default" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                </button>
                            </span>
                        </div>
                    </div>
                </form>

                <button type="button" class="btn btn-default pull-right" aria-label="Left Align" data-toggle="modal" data-target="#modal-cliente">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                </button>

                <p id="txt-cliente" class="navbar-text pull-right">Avulso</p>
            </div>

        </div>
    </nav>

    <div id="canvas">

        <div id="nav">
            <nav>
                <ul class="nav">
                    <li><h3>CAIXA 01</h3></li>
                    <li><h3>Colaborador 01</h3></li>
                    <li><a href="#modal-colaborador" data-toggle="modal">Trocar Colaborador</a></li>
                    <li><a href="#modal-cancelar" data-toggle="modal">Cancelar Vendas</a></li>
                    <li><a href="#modal-suporte" data-toggle="modal">Suporte</a></li>
                    <li><a href="#modal-sistema" data-toggle="modal">Sistema</a></li>
                    <li><a href="#modal-fechar" data-toggle="modal">Fechar Caixa</a></li>
                </ul>
            </nav>
        </div>



        <div class="container-fluid content content-main">
            <aside class="col-sm-4 aside-main">
                {% include "compras.volt" %}
            </aside>
            <section class="col-sm-8 section-main">{% include "itens.volt" %}</section>
        </div>




    </div>

    <footer class="navbar navbar-default navbar-fixed-bottom">
        <div class="container-fluid">
            <div class="col-xs-4 col-sm-1 navbar-text">TOTAL</div>
            <div class="col-xs-5 col-sm-2 text-right navbar-text">50,00</div>
            <div class="col-xs-3 col-sm-1 text-right">
                <button type="button" class="btn btn-default" aria-label="Left Align"  data-toggle="modal" data-target="#modal-pagamento">Receber</button>
            </div>
        </div>
    </footer>

</div>


{% include "modal-grupo.volt" %}

{% include "modal-unidade.volt" %}

{% include "modal-cliente.volt" %}

{% include "modal-pagamento.volt" %}

{% include "modal-desconto.volt" %}

{% include "modal-pagamento-tipo.volt" %}

{% include "modal-colaborador.volt" %}

{% include "modal-cancelar.volt" %}

{% include "modal-suporte.volt" %}

{% include "modal-sistema.volt" %}

{% include "modal-fechar.volt" %}