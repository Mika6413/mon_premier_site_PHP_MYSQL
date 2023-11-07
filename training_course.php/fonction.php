<?php
$recipe = 'Etape 1 : des flageolets ! Etape 2 : de la saucisse toulousaine ';
$length = strlen($recipe);

echo 'La phrase ci-dessous comporte ' . $length . ' caractères :' . PHP_EOL . $recipe;

echo str_replace('c', 'C', ' le cassoulet, c\'est très bon s\'il est vegan')
?>