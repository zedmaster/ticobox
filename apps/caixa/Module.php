<?php

namespace Ticobox\Caixa;

use Phalcon\DiInterface;
use Phalcon\Loader;
use Phalcon\Mvc\View;
use Phalcon\Db\Adapter\Pdo\Mysql as DbAdapter;
use Phalcon\Mvc\ModuleDefinitionInterface;


class Module implements ModuleDefinitionInterface
{
    /**
     * Registers an autoloader related to the module
     *
     * @param DiInterface $di
     */
    public function registerAutoloaders(DiInterface $di = null)
    {

        $loader = new Loader();

        $loader->registerNamespaces(array(
            'Ticobox\Caixa\Controllers' => __DIR__ . '/controllers/',
            'Ticobox\Caixa\Models' => __DIR__ . '/models/',
            'Ticobox\Caixa\Forms' => __DIR__ . '/forms/',
        ));

        $loader->register();
    }

    /**
     * Registers services related to the module
     *
     * @param DiInterface $di
     */
    public function registerServices(DiInterface $di)
    {
        /**
         * Read configuration
         */
        $module_config = include APP_PATH . "/apps/caixa/config/config.php";
        $di->get('config')->merge($module_config);
        $config = $di->get('config');

        /**
         * Database connection is created based in the parameters defined in the configuration file
         */
        $di['db'] = function () use ($config) {
            return new DbAdapter($config->database->toArray());
        };
    }
}
