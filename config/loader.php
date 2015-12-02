<?php


$loader = new \Phalcon\Loader();

$loader->registerNamespaces(array(
        'Ajax' => __DIR__ . '/../vendor/jcheron/phalcon-jquery/Ajax/',
        'Core' => __DIR__ . '/../Core/',
        'Ticobox\Cliente\Models'      => __DIR__ . '/../apps/cliente/models/',
        'Ticobox\Cliente\Controllers' => __DIR__ . '/../apps/cliente/controllers/',
));

$loader->register();

