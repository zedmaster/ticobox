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

