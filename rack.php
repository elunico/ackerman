
<?php

function ack($m, $n) {
  if ($m == 0) {
    return $n + 1;
  } else if ($n == 0) {
      return ack($m - 1, 1);
  } else {
      return ack($m - 1, ack($m, $n - 1));
  }
}

$aused = array();
$bused = array();
$count = 0;
for ($i = 0; $i < 7; $i++) {
    for ($j = 0; $j < 7; $j++) {
        $count++;
        if ($count == 4) {
          $aused = array();
          $bused = array();
        }
        $a = rand(0, 4);
        $b = rand(0, 4);
        if (in_array($a, $aused)) continue;
        if (in_array($b, $bused)) continue;
        array_push($aused, $a);
        array_push($bused, $b);
        if ($a == 4 && $b > 0) continue;
        echo "The ack of " . $a . " and " . $b . " is " . ack($a, $b);
        echo "\n";
    }
}

 ?>
