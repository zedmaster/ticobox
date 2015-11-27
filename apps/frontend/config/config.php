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
                'frontend' => array(
                'className' => 'Ticobox\Frontend\Module',
                'path' => __DIR__ . '/../apps/frontend/Module.php'
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

));
