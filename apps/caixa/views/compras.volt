<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">1</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">2</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">3</a></li>
    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">4</a></li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
        <table class="table table-striped">
            <tbody>
            {% for i in 1..20 %}
                <tr>
                    <td>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">25,00</div>
                            <div class="col-xs-4 col-sm-3 text-right">2 UN</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">Produto {{ i }}</div>
                            <div class="col-xs-4 col-sm-3 text-right">50,00</div>
                        </div>
                    </td>
                </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
        <table class="table table-striped">
            <tbody>
            {% for i in 1..10 %}
                <tr>
                    <td>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">30,00</div>
                            <div class="col-xs-4 col-sm-3 text-right">1 UN</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">Produto {{ i }}</div>
                            <div class="col-xs-4 col-sm-3 text-right">30,00</div>
                        </div>
                    </td>
                </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>
    <div role="tabpanel" class="tab-pane" id="messages">
        <table class="table table-striped">
            <tbody>
            {% for i in 1..1 %}
                <tr>
                    <td>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">50,00</div>
                            <div class="col-xs-4 col-sm-3 text-right">1 UN</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">Produto {{ i }}</div>
                            <div class="col-xs-4 col-sm-3 text-right">50,00</div>
                        </div>
                    </td>
                </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>
    <div role="tabpanel" class="tab-pane" id="settings">
        <table class="table table-striped">
            <tbody>
            {% for i in 1..2 %}
                <tr>
                    <td>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">5,00</div>
                            <div class="col-xs-4 col-sm-3 text-right">2 UN</div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8 col-sm-9">Produto {{ i }}</div>
                            <div class="col-xs-4 col-sm-3 text-right">10,00</div>
                        </div>
                    </td>
                </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>
</div>

