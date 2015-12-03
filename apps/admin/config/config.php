<?php

return new \Phalcon\Config(array(
    'application' => array(
        'controllersDir' => __DIR__ . '/../controllers/',
        'modelsDir'      => __DIR__ . '/../models/',
        'migrationsDir'  => __DIR__ . '/../migrations/',
        'viewsDir'       => __DIR__ . '/../views/',
        'formsDir'       => __DIR__ . '/../forms/',
        'cacheDir'       => __DIR__ . '/../../../cache/volt/',
    ),
    // Navigation
    'navigation' => array(
        'top' => array(
            'class' => 'nav navbar-nav',
            'id' => 'top-navigation',
            'childs' => array(
                array(
                    'class' => 'glyphicon glyphicon-log-in',
                    'url' => '/admin',
                    'name' => 'Login',
                    'module' => 'admin',
                    'controller' => 'index',
                    'action' => 'index',

                ),
                array(
                    'class' => 'glyphicon glyphicon-log-out',
                    'url' => '/admin/index/logout',
                    'name' => 'Logout',
                    'module' => 'admin',
                    'controller' => 'index',
                    'action' => 'logout',
                ),
            ))
    ),
));
