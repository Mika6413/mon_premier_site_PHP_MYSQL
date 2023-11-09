<?php

// 2 exemples
$romanSalad = [
    'title' => 'Salade Romaine',
    'recipe' => 'Etape 1 : Lavez la salade ; Etape 2 : euh ...',
    'author' => 'laurene.castor@exemple.com',
    'is_enabled' => true,
];

$sushis = [
    'title' => 'Sushis',
    'recipe' => 'Etape 1 : du saumon ; Etape 2 : du riz',
    'author' => 'laurene.castor@exemple.com',
    'is_enabled' => false,
];

function isValidRecipe(array $romanSalad, array $sushis) {

// Répond true !
$isRomanSaladValid = isValidRecipe($romanSalad);

// Répond false !
$isSushisValid = isValidRecipe($sushis);
}