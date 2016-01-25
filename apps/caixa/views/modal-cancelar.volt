<div id="modal-cancelar" class="modal fade" role="dialog"  >
    <div class="modal-dialog  modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <span class="modal-title">Cancelar Vendas</span>
            </div>
            <div class="modal-body">

                <div class="col-xs-6 col sm-6">
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

                <table class="table table-responsive">
                    <thead>
                        <th>Data</th>
                        <th>Cliente</th>
                        <th>E-mail</th>
                        <th>CPF/CNPJ</th>
                        <th>Total</th>
                        <th>St/Ação</th>
                    </thead>
                    <tbody>
                    {% for i in 1..20 %}
                        <tr>
                            <td>10/01/2016</td>
                            <td>Nome {{ i }}</td>
                            <td>email{{ i }}@gmail.com</td>
                            <td>{{ i }}31027209269</td>
                            <td>100,00</td>
                            <td>
                                {% if(i is divisibleby(2)) %}
                                    <button type="button" class="btn btn-sm pull-right" aria-label="Left Align" >
                                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                    </button>
                                {% else %}
                                    <span class="pull-right">Cancelado</span>
                                {% endif %}

                            </td>
                        </tr>
                    {% endfor %}
                    </tbody>
                </table>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Voltar</button>
                </div>

            </div>
        </div>

    </div>
</div>