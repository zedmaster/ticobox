<div id="container">

    <div id="canvas">

        <div id="nav">
            <nav>
                <ul class="nav">
                    <li><a href="#">Link 1</a></li>
                    <li><a href="#" id="btn-1" data-toggle="collapse" data-target="#submenu1" aria-expanded="false">Link 2 (toggle)</a>
                        <ul class="nav collapse" id="submenu1" role="menu" aria-labelledby="btn-1">
                            <li><a href="#">Link 2.1</a></li>
                            <li><a href="#">Link 2.2</a></li>
                            <li><a href="#">Link 2.3</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Link 3</a></li>
                    <li><a href="#">Link 4</a></li>
                </ul>
            </nav>
        </div>


        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                    <ul class='nav navbar-nav'  id='top-navigation'>
                        <li><a href="#" class="toggle-nav" ><i class="fa fa-bars"></i></a></li>
                        <li class="active"><a href="/"  class="nav-header" >Grupo 1</a></li>
                        <li><a href="/"  class="nav-header" >Grupo 2</a></li>
                        <li><a href="/"  class="nav-header" >Grupo 3</a></li>
                        <li><a href="/"  class="nav-header" >Grupo 4</a></li>
                    </ul>
            </div>
        </nav>


        <div class="container-fluid content">
            <aside class="col-sm-4 fill">Caixa</aside>
            <section class="col-sm-8 fill">Itens</section>
        </div>

        <footer class="footer">
            <button type="button" class="btn btn-default" aria-label="Left Align">
                <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
            </button>
        </footer>


    </div>

</div>
