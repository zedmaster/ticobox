<div data-role="tabs" id="tabs">
    <div data-role="navbar">
        <ul data-role="tabs" id="tabs">
            <li><a href="#t1" data-ajax="false">1</a></li>
            <li><a href="#t1" data-ajax="false">2</a></li>
            <li><a href="#t1" data-ajax="false">3</a></li>
            <li><a href="#add" data-ajax="false">+</a></li>
            <li><a href="#del" data-ajax="false">-</a></li>
        </ul>
    </div>


    <div id="t1" class="ui-body-d ui-content">
        <table id="compras-table" data-role="table" class="ui-responsive">
            <thead>
                <th></th>
                <th></th>
            </thead>
            <tbody>
            {% for i in 1..20 %}
                <tr>
                    <td><div>Block A</div><div>Block B</div></td>
                    <td><div>Block C</div><div>Block D</div></td>
                </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>

</div>