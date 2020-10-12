<?php

    $function = "3*x";


    // метод Симпсоно

    $a = 5;  // начало отрезка
    $b = 25; //конец отрезка
    $n = 10000000; //число шагов

    $h = ($b - $a) / (2 * $n);
    $s1 = 0;
    $s2 = 0;

    for ($i = 0; $i <= $n; $i++) {
        $x1 = $a + (2 * $i - 1) * $h;
        $s1 = $s1 + f($x1, $function);
        $x2 = $x1 + $h;
        $s2 = $s2 + f($x2, $function);
    }

    $fa = f($a, $function);
    $fb = f($b, $function);
    $s = $h / 3 * (f($fa, $function) + 4 * $s1 + 2 * $s2 - f($fb, $function));

    echo $s;


    //calculate function from arg
    function f($a, string $function)
    {
        $mb = str_replace("x", $a, $function); // заменяет переменную х на пришедшую переменную
        try {
            $p = eval('return ' . $mb . ';');  //считаем значение
        } catch (Exception $exception) {
            echo "Error in calculate function $mb";
            exit(1);
        }

        return $p;
    }



