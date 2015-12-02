<?php

/**
 * Register application modules
 */
$application->registerModules(array(
    'cliente' => array(
        'className' => 'Ticobox\Cliente\Module',
        'path' => __DIR__ . '/../apps/cliente/Module.php'
    ),
    'admin' => array(
        'className' => 'Ticobox\Admin\Module',
        'path' => __DIR__ . '/../apps/admin/Module.php'
    )
));
