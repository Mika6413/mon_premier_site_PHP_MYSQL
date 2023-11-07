<?php
$recipe = [
    'title' => 'Salade Romaine',
    'recipe' => 'Etape 1 : Lavez la salade ; Etape 2 : euh ...',
    'author' => 'laurene.castor@exemple.com',
    'isEnabled' => true,
];

function isValidRecipe(array $recipe) {
if (array_key_exists('isEnabled', $recipe)) {
    $isEnabled = $recipe['isEnabled'];
} else {
    $isEnabled = false;
}

return $isEnabled;
}