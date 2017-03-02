#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Поиск номера первого не нулевого бита.

=head1 run ($x)

Функция поиска первого не нулевого бита в 32-битном числе (кроме 0).
Пачатает номер первого не нулевого бита в виде "$num\n"

Примеры: 

run(1) - печатает "0\n".

run(4) - печатает "2\n"

run(6) - печатает "1\n"

=cut

sub run {
    my ($x) = @_;
    my $num = 0;

    # ...
    # Вычисление номера первого ненулевого бита 
    # ...
    
    my $flag = 1;
    for(my $i=0;$i<=31;$i++)
    {
 	    if (($flag & $x) ==0)
	    {
	    	$flag<<=1;
	    }
	    else
	    {    
		$num=$i;
		last;
	    }
    }
    print "$num\n";
}

1;
