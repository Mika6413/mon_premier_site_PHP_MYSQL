<?php
 $mickael = ['Mickaël Andrieu ', 'mickael.andrieu@exemple.com ', 'S3cr3t ', 34];
 $mathieu = ['Mathieu Nebra ', 'mathieu.nebra@exemple.com ', 'devine ', 33];
 $laurene = ['Laurène Castor ', 'laurene.castor@exemple.com ', 'P4ssw0rD ', 28];
 $users = [$mickael, $mathieu, $laurene];


$lines = 3;
$counter = 0;

while ($counter < $lines) {
    echo $users [$counter] [0] . '' . $users [$counter] [1] ,'<br />';
    $counter++;
}
?>