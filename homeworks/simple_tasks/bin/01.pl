#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Вычисление корней квадратного уравнения a*x**2+b*x+c=0.

=head1 run ($a_value, $b_value, $c_value);

Функция вычисления корней квадратного уравнения.
Принимает на вход  коэфиценты квадратного уравнения $a_value, $b_value, $c_value.
Вычисляет корни в переменные $x1 и $x2.
Печатает результат вычисления в виде строки "$x1, $x2\n".
Если уравнение не имеет решания должно быть напечатано "No solution!\n"

Примеры: 

run(1, 0, 0) - печатает "0, 0\n"

run(1, 1, 0) - печатает "0, -1\n"

run(1, 1, 1) - печатает "No solution!\n"

=cut


#sub run; 

sub run {
#	my $a_value=shift; 
#	my $b_value=shift;
#	my $c_value=shift;
	my ($a_value, $b_value, $c_value) = @_;
    my $x1 = undef;
    my $x2 = undef;

    #...
    #Вычисление корней
    #...

    if ($a_value==0) 
    {
	    print "No solution!\n"
    }
    else
    {
    if ($b_value*$b_value-4*$a_value*$c_value<0)
    {
         print "No solution!\n";
    }
    else
    {
         $x1=(-$b_value+sqrt($b_value*$b_value-4*$a_value*$c_value))/(2*$a_value);
         $x2=(-$b_value-sqrt($b_value*$b_value-4*$a_value*$c_value))/(2*$a_value);
         print "$x1, $x2\n";

    }
    }
}
#&run(1,2,1);
#&run(@ARGV);


1
