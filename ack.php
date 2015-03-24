<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Ackermann</title>

    <style type="text/css" media="screen">
        body {
            font-family: "Helvetica Neue", Arial, Helvetica, sans-serif;
            font-size: 16pt;
            color: #222;
            margin: 2%;
        }
    </style>

</head>
<body>
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
            echo "The ack of " . i . " and " . j . " is " . ack($i, $j);
        }
    }

     ?>
</body>
</html>
