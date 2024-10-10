<?php

use Swoole\Http\Server;

$server = new Server("0.0.0.0", 9501);

$server->on("request", function ($request, $response) {
    $response->header("Content-Type", "text/plain");
    $response->end("Swoole server is running!");
});

$server->start();
