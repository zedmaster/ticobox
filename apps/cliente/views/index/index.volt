<div class="row">

    <div class="col-md">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Instruções</h3>
            </div>
            <div class="panel-body">
                <p>Efetue o login utilizando seu e-mail e senha, para acessar o sistema.</p>

            </div>
        </div>
    </div>

    {{ flash.output() }}
    <div class="col-md">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Login</h3>
            </div>



            <p>
            <form method="post" name="login" action="/index/auth" class="form-horizontal" role="form" id="login">

                    {% for element in form %}
                        <div class="form-group ">
                            {{ element.label(['class': 'col-sm-2 control-label']) }}
                            <div class="col-sm-4">{{ element.render() }}</div>
                        </div>
                    {% endfor %}

            </form>
            </p>

        </div>
    </div>
</div>
