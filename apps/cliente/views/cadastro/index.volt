<div class="row">

    {{ flash.output() }}
    <div class="col-md">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Cadastro</h3>
            </div>

            <p>
            <form method="post" name="cadastro" action="/cadastro/save" class="form-horizontal" role="form" id="cadastro">

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


<script>
    jQuery(function($){
        $("#cpf").mask("999.999.999-99");
        $("#telefone").mask("(99) 9999-9999?9");
        $("#celular").mask("(99) 9999-9999?9");
    });
</script>
