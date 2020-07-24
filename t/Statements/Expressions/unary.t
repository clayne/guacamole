use strict;
use warnings;
use Guacamole::Test;

parses('defined $x');
parses('defined $x + $y');
parses('!defined $x + $y');
parses('$x + !defined $y + $z');
parses('$x ** !defined $y << $z');
parses('!-t STDIN');
parses('-f $x << $y');
parses('-x -x -x STDERR');

parses('-4');
parses('-44.4');


done_testing;
