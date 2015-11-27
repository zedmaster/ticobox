<?php
/**
 * Services are globally registered in this file
 *
 * @var \Phalcon\Config $config
 */

use Phalcon\Mvc\Router;
use Phalcon\Mvc\Url as UrlResolver;
use Phalcon\Di\FactoryDefault;
use Phalcon\Session\Adapter\Files as SessionAdapter;
use Phalcon\Mvc\Model\Metadata\Memory as MetaDataAdapter;
use Phalcon\Mvc\View;
use Phalcon\Mvc\View\Engine\Volt as VoltEngine;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Events\Manager as EventsManager;
use Core\Plugins\Security;
use Core\Plugins\NotFound;
use Core\Plugins\Auth;
use Core\Navigation;


/**
 * The FactoryDefault Dependency Injector automatically registers the right services to provide a full stack framework
 */
$di = new FactoryDefault();

/**
 * Regitrar Config
 */
$di->set("config", function() use ($config) {
    return $config;
});



/**
 * Registering a router
 */
$di->setShared('router', function () use ($config){
    $router = new Router();

    //var_dump($config->application->modules);die();

    /**
     * Include routes
     */
    require __DIR__ . '/../config/routes.php';


    $router->setDefaultModule('frontend');
    $router->setDefaultNamespace('Ticobox\Frontend\Controllers');

    return $router;
});

/**
 * The URL component is used to generate all kinds of URLs in the application
 */
$di->setShared('url', function () use ($config) {
    $url = new UrlResolver();
    $url->setBaseUri($config->application->baseUri);

    return $url;
});

/**
 * Setting up the view component
 */
$di->setShared('view', function () use ($config) {

    $view = new View();

    $view->setViewsDir($config->application->viewsDir);

    $view->registerEngines(array(
        '.volt' => function ($view, $di) use ($config) {
            $view->setLayoutsDir( '/layouts/' );
            $view->setTemplateAfter('main');

            $volt = new VoltEngine($view, $di);

            $volt->setOptions(array(
                'compiledPath' => $config->application->cacheDir,
                'compiledSeparator' => '_'
            ));

            return $volt;
        },
        '.phtml' => 'Phalcon\Mvc\View\Engine\Php'
    ));

    return $view;
});

/**
 * Database connection is created based in the parameters defined in the configuration file
 */
$di->setShared('db', function () use ($config) {
    $dbConfig = $config->database->toArray();
    $adapter = $dbConfig['adapter'];
    unset($dbConfig['adapter']);

    $class = 'Phalcon\Db\Adapter\Pdo\\' . $adapter;

    return new $class($dbConfig);
});

/**
 * If the configuration specify the use of metadata adapter use it or use memory otherwise
 */
$di->setShared('modelsMetadata', function () {
    return new MetaDataAdapter();
});

/**
 * Starts the session the first time some component requests the session service
 */
$di->setShared('session', function () {
    $session = new SessionAdapter();
    $session->start();

    return $session;
});

/**
* Set the default namespace for dispatcher
*/
$di->setShared('dispatcher', function() use ($di) {
    $eventsManager = new EventsManager;

    /**
     * Check if the user is allowed to access certain action using the SecurityPlugin
     */
    $eventsManager->attach('dispatch:beforeExecuteRoute', new Security);

    /**
     * Handle exceptions and not-found exceptions using NotFoundPlugin
     */
    $eventsManager->attach('dispatch:beforeException', new NotFound);

    $dispatcher = new Dispatcher;
    $dispatcher->setEventsManager($eventsManager);
    $dispatcher->setDefaultNamespace('Ticobox\Frontend\Controllers');

    return $dispatcher;
});


/**
 * Custom authentication component
 */
$di->setShared('auth', function () {
    return new Auth();
});

/**
 *  Custom navigation component
 */
$di->set('navigation', function () use ($config) {
    return new Navigation($config->navigation);
}, true);


/**
 * Set jQuery
 */
$di->set("jquery",function(){
    $jquery= new Ajax\JsUtils(array("driver"=>"Jquery"));
    $jquery->ui(new Ajax\JqueryUI());//optional for JQuery UI
    $jquery->bootstrap(new Ajax\Bootstrap());//Optional for Twitter Bootstrap

    return $jquery;
});

/**
 * set flash
 */
$di->set('flash', function() {
    $flash = new \Phalcon\Flash\Session([
        'error' => 'alert alert-danger',
        'success' => 'alert alert-success',
        'notice' => 'alert alert-info',
    ]);

    return $flash;
});

