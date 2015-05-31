
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

for ($i = 0; $i < 5; $i++) {
    for ($j = 0; $j < 5; $j++) {
        echo "The ack of " . $i . " and " . $j . " is " . ack($i, $j);
        echo "\n";
        if ($i == 4 && $j == 0) break;
    }
}

 ?>
