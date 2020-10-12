<?php

    //метод трапеции

    $function = "3*x";

    $a = 5;  // начало отрезка
    $b = 25; //конец отрезка
    $n = 10000000; //число шагов

    $h = ($b - $a) / $n;

    $s =$h*(f($a, $function) + f($b, $function))/2;

    for ($i = 0; $i <= $n; $i++) {
       $s=$s+$h*f($a+$i*$h,$function);
    }

    echo $s;


    //calculate function from arg
    function f($a, string $function)
    {
        $mb = str_replace("x", $a, $function); // заменяет переменную х на пришедшую переменную
        try {
            $p = eval('return ' . $mb . ';');  //считаем значение
        } catch (ParseError  $exception) {
            echo "Error in calculate function $mb";
            echo $exception;
            exit(1);
        }

        return $p;
    }