<?php

use Phalcon\Di\FactoryDefault;
use Phalcon\Mvc\Application;
use Phalcon\Loader;
use Phalcon\Mvc\View;

// Use the FactoryDefault dependency injector
$di = new FactoryDefault();

// Set up the autoloader for your application
$loader = new Loader();

// Register directories
$loader->registerDirs(
    [
        '../app/controllers/',
        '../app/models/',
        '../app/views/',
    ]
)->register();

// Set up the views service
$di->setShared('view', function () {
    $view = new View();
    $view->setViewsDir('../app/views/');
    return $view;
});

// Set up the application
$app = new Application($di);

// Handle the request
try {
    $response = $app->handle($_SERVER["REQUEST_URI"]);
    $response->send();
} catch (\Exception $e) {
    echo 'Exception: ', $e->getMessage();
}
