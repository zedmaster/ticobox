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

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <button type="button" class="btn btn-default toggle-nav" aria-label="Left Align">
                        <span class="glyphicon glyphicon-th" aria-hidden="true"></span>
                    </button>
                </div>

                <div class="collapse navbar-collapse" >
                    <ul class="nav navbar-nav">
                       <li><a href="#">Action</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid content">
            <aside class="col-sm-4 fill">Caixa</aside>
            <section class="col-sm-8 fill">Itens</section>
        </div>

        <footer class="footer navbar-fixed-bottom">
            <div class="container-fluid">
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
                </button>
            </div>
        </footer>


    </div>

</div>
