<?php

use App\Greeting;

require_once 'vendor/autoload.php';

// Handle CLI arguments
$argument = getopt('p:');

$lang = isset($argument['p']) ? strtolower($argument['p']) : 'en';

$greeting = new Greeting();

echo $greeting->sayHi($lang) . PHP_EOL;