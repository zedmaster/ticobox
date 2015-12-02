<?php

return new \Phalcon\Config(array(
    'database' => array(
        'adapter'  => 'Mysql',
        'host'     => 'localhost',
        'username' => 'www',
        'password' => 'tux',
        'dbname'   => 'tico_box',
        'charset'  => 'utf8',
    ),
    'application' => array(
        'controllersDir' => __DIR__ . '/../controllers/',
        'modelsDir'      => __DIR__ . '/../models/',
        'migrationsDir'  => __DIR__ . '/../migrations/',
        'viewsDir'       => __DIR__ . '/../views/',
        'formsDir'       => __DIR__ . '/../forms/',
        'cacheDir'       => __DIR__ . '/../../../cache/volt/',
        'layoutDir'      => __DIR__ . '/../views/layout',
        //'baseUri'        => '/Ticobox/'
        'baseUri'        => '/',
        'modules' => array(
                'cliente' => array(
                'className' => 'Ticobox\Cliente\Module',
                'path' => __DIR__ . '/../apps/cliente/Module.php'
            )
        )
    ),
    // Controle de acesso
    'acl' => array(
        'roles' => array(
            'Visitante'   => null,
            'Cliente' => null
        ),
        'home' => array(
            'Visitante' => '/',
            'Cliente'   => '/painel'
        ),
        'resources' => array(
            'errors'    => array('show401', 'show404', 'show500'),
            'index'     => array('index', 'auth', 'logout', 'teste','error'),
            'cadastro'  => array('index', 'save'),
            'painel'    => array('index'),
        ),
        'privilege' => array(
            'Visitante' => array(
                'allow' => array(
                    'errors'     => array('show401', 'show404', 'show500'),
                    'index'      => array('index', 'auth', 'teste','error'),
                    'cadastro'   => array('index', 'save'),
                )
            ),
            'Cliente' => array(
                'allow' => array(
                    'errors'    => array('show401', 'show404', 'show500'),
                    'index'     => array('logout'),
                    'painel'    => array('index'),

                )
            ),
        )
    ),
    // Navigation
    'navigation' => array(
        'top' => array(
            'class' => 'nav navbar-nav',
            'id' => 'top-navigation',
            'childs' => array(
                array(
                    'class' => 'glyphicon glyphicon-log-in',
                    'url' => '/',
                    'name' => 'Login',
                    'module' => 'cliente',
                    'controller' => 'index',
                    'action' => 'index',

                ),
                array(
                    'class' => 'glyphicon glyphicon-plus',
                    'url' => '/cadastro',
                    'name' => 'Cadastrar',
                    'module' => 'cliente',
                    'controller' => 'cadastro',
                    'action' => 'index',
                ),
                array(
                    'class' => 'glyphicon glyphicon-log-out',
                    'url' => '/index/logout',
                    'name' => 'Logout',
                    'module' => 'cliente',
                    'controller' => 'index',
                    'action' => 'logout',
                ),
            ))
    ),

));
