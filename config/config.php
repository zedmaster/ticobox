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
        //'baseUri'        => '/Ticobox/'
        'baseUri'        => '/',
        'modules' => array(
            'cliente' => array(
                'className' => 'Ticobox\Cliente\Module',
                'path' => __DIR__ . '/../apps/cliente/Module.php'
            ),
            'admin' => array(
                'className' => 'Ticobox\Admin\Module',
                'path' => __DIR__ . '/../apps/admin/Module.php'
            ),
            'caixa' => array(
                'className' => 'Ticobox\Caixa\Module',
                'path' => __DIR__ . '/../apps/caixa/Module.php'
            )
        ),
    ),
    // Controle de acesso
    'acl' => array(
        'roles' => array(
            'Visitante' => null,
            'Cliente'   => null,
            'Admin'     => null,
            'Caixa'     => null,
        ),
        'home' => array(
            'Visitante' => '/',
            'Cliente'   => '/painel',
            'Admin'     => '/admin/painel',
            'Caixa'     => '/caixa/painel'
        ),
        'resources' => array(
            'cliente:errors'    => array('show401', 'show404', 'show500'),
            'cliente:index'     => array('index', 'auth', 'logout', 'teste','error'),
            'cliente:cadastro'  => array('index', 'save'),
            'cliente:painel'    => array('index'),
            'admin:errors'      => array('show401', 'show404', 'show500'),
            'admin:index'       => array('index', 'auth', 'logout'),
            'admin:painel'      => array('index'),
            'caixa:errors'      => array('show401', 'show404', 'show500'),
            'caixa:index'       => array('index', 'auth', 'logout'),
            'caixa:painel'      => array('index'),
        ),
        'privilege' => array(
            'Visitante' => array(
                'allow' => array(
                    'cliente:errors'     => array('show401', 'show404', 'show500'),
                    'admin:errors'       => array('show401', 'show404', 'show500'),
                    'caixa:errors'       => array('show401', 'show404', 'show500'),
                    'cliente:index'      => array('index', 'auth', 'teste','error'),
                    'cliente:cadastro'   => array('index', 'save'),
                    'admin:index'        => array('index', 'auth'),
                    'caixa:index'        => array('index', 'auth'),
                )
            ),
            'Cliente' => array(
                'allow' => array(
                    'cliente:errors'    => array('show401', 'show404', 'show500'),
                    'admin:errors'      => array('show401', 'show404', 'show500'),
                    'caixa:errors'      => array('show401', 'show404', 'show500'),
                    'cliente:index'     => array('logout'),
                    'cliente:painel'    => array('index'),

                )
            ),
            'Admin' => array(
                'allow' => array(
                    'cliente:errors'  => array('show401', 'show404', 'show500'),
                    'admin:errors'    => array('show401', 'show404', 'show500'),
                    'caixa:errors'    => array('show401', 'show404', 'show500'),
                    'admin:index'     => array('logout'),
                    'admin:painel'    => array('index'),

                ),
            ),
            'Caixa' => array(
                'allow' => array(
                    'cliente:errors'  => array('show401', 'show404', 'show500'),
                    'admin:errors'    => array('show401', 'show404', 'show500'),
                    'caixa:errors'    => array('show401', 'show404', 'show500'),
                    'caixa:index'     => array('logout'),
                    'caixa:painel'    => array('index'),

                )
            )
        )
    )
));
