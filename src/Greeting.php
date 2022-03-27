<?php

namespace App;

class Greeting
{
    public function sayHi(?string $lang = 'en'): string
    {
        $translations = $this->translations();

        return ($translations[$lang] ?? $translations['en']) . ' Docker!';
    }

    private function translations(): array
    {
        return [
            'en' => 'Hi from',
            'it' => 'Ciao da',
        ];
    }
}