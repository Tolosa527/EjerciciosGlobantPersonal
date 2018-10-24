#!/usr/bin/perl

use Math::Complex;

sub cuadratica { # ------> recibe tres parametros

    my @args = @_;

    my $a, $b, $c;

    $a = $args[0];
    $b = $args[1];
    $c = $args[2];

    print "la variable a es " . $a . "\n";
    print "la variable b es " . $b . "\n";
    print "la variable c es " . $c . "\n";


    my $resultado_1 = ((-1*$b)+((sqrt(($b*$b)-(4*$a*$c)))))/(2*$a); 
    my $resultado_2 = ((-1*$b)-((sqrt(($b*$b)-(4*$a*$c)))))/(2*$a);

    if (($resultado_1)< 0 || ($resultado_2) < 0){

            print "El resultado da un numero irreal. El programa no acepta numeros irreales.\n"
    }

    else{
            print "El resultado x1 es: " . $resultado_1 . "\n"; 
            print "El resultado x2 es: " . $resultado_2 . "\n";
    }
}
#Funcion numero primo.
sub numero_primo{

    my @args = @_;

    my $n1,$n2;

    $n1 = $args[0];
    $n2 = $args[1];



    my @resultado=();

    #print $resultado;

    for (my $i=$n1; $i < $n2; $i++){

        my $es_primo = 1;

        for (my $j = 2; $j < $i; $j++){

            if($i%$j == 0){
                $es_primo=0;
                last;
            }    

        }    

        if($es_primo){
            push(@resultado,$i);
        }
    }    
    #print Dumper(@resultado);
    for (my $i=0; $i < scalar @resultado; $i++){
    print "numero: " . $resultado[$i] . "\n";
    }
}

#Operacion de control para valores menor que.
sub check_mayor_que{

    my @args = @_;
    my $resolve;
    my $numero_1, $numero_2; 

    $numero_1 = $args[0];
    $numero_2 = $args[1];

    if ($numero_1 < $numero_2){
        $resolve = 1;
    }
    else {
        $resolve = 0;
    }

    return $resolve;
}
#Chequea que no haya divisiones por 0.
sub check_division_invalida{

    #me parece una pelotudez iniciar un array para un solo parametro.

    my @args = @_;
    my $numero_1;

    $numero_1 = $args[0];

    if ($numero_1 == 0){
        return 1;
    } 
}

sub check_argumento_negativo{
    my @args = @_;
    my $n1, $n2, $n3;

    $n1 = $args[0];
    $n2 = $args[1];
    $n3 = $args[2];

    if ((sqrt($n2*$n2)-(4*$n1*$n3))<0){
        return 1;
    }    

}

#ESTA EXCEPCION TODAVIA NO ESTA DESARROLLADA CORRECTAMENTE.
#sub check_resultado_i{

    

#    if (($resultado_1)< 0 || ($resultado_2) < 0){

 #          print "El resultado da un numero irreal. El programa no acepta numeros irreales.\n"
  #  }    

#}

sub inicio_de_programa{

    my $cont;
    my $select;
    my @numeros =();

    print "Elija la opcion que desea realizar:\n";
    print "1) Numero primo.\n";
    print "2) Funcion cudratica.\n";

    my $a = <STDIN>;
    $a += 0;
    $select = $a;

    if ($select == 1){

        while ($cont < 2){


            print "Ingrese Numero: ";
            my $b = <STDIN>;
            $b += 0;
            print "\n";
            $cont = $cont+1;
            push(@numeros, $b);
        }

    }elsif ($select == 2){

        while ($cont < 3){


            print "Ingrese Numero: ";
            my $c = <STDIN>;
            $c += 0;
            print "\n";
            $cont = $cont+1;
            push(@numeros, $c);

        }

    }

    


    if (scalar @numeros == 2){

        print "Se ejecuto la funcion NUMEROS PRIMOS\n";


        if (check_mayor_que($numeros[0],$numeros[1])){

        numero_primo($numeros[0],$numeros[1]);


        }else{

            print "El numero a) " . $numeros[0] . " es menor que el numero b) " . $numeros[1] . "\n";
            print "Operacion invalida.\n";
        }
    }

    elsif(scalar @numeros == 3){

        print "Se ejecuto la funcion CUADRATICA\n";


        if (check_division_invalida($numeros[0])){

        print "El programa no funcionara dividiendo por 0\n";

        }
        elsif (check_argumento_negativo($numeros[0], $numeros[1], $numeros[2])){
            print "EL programa no acepta raices cuadradas de numeros negativos\n";

            my $var = sqrt($numeros[1]*$numeros[1])-(4*$numeros[0]*$numeros[2]);
            print "Dicho numero es: " . $var . "\n";
        }
        else{
            cuadratica($numeros[0], $numeros[1], $numeros[2]);
        }
    }    
}

inicio_de_programa;

1;
