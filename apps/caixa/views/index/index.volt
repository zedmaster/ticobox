<div class="ui-grid-a ui-responsive">
    {{ flash.output() }}
    <div class="ui-corner-all custom-corners ui-block-a">
        <div class="ui-bar ui-bar-a">
            <h3 class="panel-title">Login</h3>
        </div>


        <div class="ui-body ui-body-a">
            <form method="post" name="login" action="/caixa/index/auth" role="form" id="login" data-ajax="false">

                    {% for element in form %}
                        {{ element.label(['class': 'col-sm-2 control-label']) }}
                        {{ element.render() }}
                    {% endfor %}

            </form>
        </div>

        </div>
    </div>
</div>
