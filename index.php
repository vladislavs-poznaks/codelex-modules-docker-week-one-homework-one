<?php

use App\Greeting;

require_once 'vendor/autoload.php';

$greeting = new Greeting();

echo $greeting->sayHi();