<?php


$loader = new \Phalcon\Loader();

$loader->registerNamespaces(array(
        'Ajax' => __DIR__ . '/../vendor/jcheron/phalcon-jquery/Ajax/'
));

$loader->register();

