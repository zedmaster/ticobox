<div data-role="tabs" id="tabs">
    <div data-role="navbar">
        <ul data-role="tabs" id="tabs">
            <li><a href="#t1" data-ajax="false">1</a></li>

        </ul>
    </div>


    <div id="t1" class="ui-body-d ui-content">
        <table id="compras-table" data-role="table" >
            <thead>
                <tr>
                    <th data-priority="1"></th>
                    <th data-priority="1"></th>
                </tr>
            </thead>
            <tbody>
            {% for i in 1..20 %}
                <tr>
                    <td style="width: 80%;">
                        <div>10,00</div>
                        <div>Produto 01</div>
                    </td>
                    <td>
                        <div>3 UN</div>
                        <div>30,00</div>
                    </td>
                </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>

</div>