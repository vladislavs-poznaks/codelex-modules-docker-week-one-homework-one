<?php

use App\Greeting;
use PHPUnit\Framework\TestCase;

class GreetingTest extends TestCase
{
    /** @test */
    public function it_greets_in_english()
    {
        $greeting = new Greeting();

        $this->assertEquals('Hi from Docker!', $greeting->sayHi());
    }

    /** @test */
    public function it_greets_in_different_language_if_passed()
    {
        $greeting = new Greeting();

        $this->assertEquals('Hola de Docker!', $greeting->sayHi('es'));
    }

}
