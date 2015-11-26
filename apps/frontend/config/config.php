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
    'pup' => array(
        'redirect' => array(
            'success' => '/painel',
            'failure' => '/'
        ),
        'resources' => array(
            'type' => 'private',
            'resources' => array(
                '*' => array(
                    // All except
                    'index' => array('index','auth'),
                    'cadastro' => array('index','save')
                )
            )
        )
    )

));
