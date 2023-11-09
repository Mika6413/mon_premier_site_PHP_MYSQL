<?php
$grade = 15;

switch ($grade) {
    case 0:
        echo "nul à tous niveaux";
    break;

    case 5:
        echo "encore un effort pour avoir la moyenne avoir";
    break;

    case 10:
        echo "tout juste passable";
    break;

    case 15:
        echo "C'est très bien !";
    break;

    case 20:
        echo "Félicitations !";
    break;

    default:
        echo "Aucun note n'est rentrée...";
}
?>