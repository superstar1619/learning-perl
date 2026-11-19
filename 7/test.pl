#!/usr/bin/perl
use warnings;
# use v5.10;

# $_ = "yabba dabba doo";
# if (/abba/)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo";
# if (/ab ba/)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo";
# if (/ba da/)
# {
#     print "It matched!\n";
# }

# wrong
# $_ = "yabba dabba doo";
# $pattern = "(";
# if(/$pattern/)
# {
#     print "It matched!\n";
# }

# correct
# $_ = "yabba dabba doo";
# if(/\(/)
# {
#     print "It matched!\n";
# }

# correct
# $_ = "yabba dabba doo";
# $pattern = "\\(";
# if(/$pattern/)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo";
# if (//)
# {
#     print "It matched!\n";
# }

# while( <STDIN> )
# {
#     chomp;
#     if (/fred/)
#     {
#         print "\tMatches\n";
#     }
#     else
#     {
#         print "\tDoesn't match\n";
#     }
# }

# while( <STDIN> )
# {
#     chomp;
#     if (/$ARGV[0]/)
#     {
#         print "\tMatches\n";
#     }
#     else
#     {
#         print "\tDoesn't match\n";
#     }
# }

# $_ = "yabba dabba doo";
# if (/ab.a/)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo!";
# if (/doo./)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo\n";
# if (/doo./)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo.";
# if (/doo\./)
# {
#     print "It matched!\n";
# }

# $_ = "a real \\ backslash";
# if (/\\/)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo!";
# if (/doo\N/)
# {
#     print "It matched!\n";
# }

# $_ = "yabba dabba doo\n";
# if (/doo\N/)
# {
#     print "It matched!\n";
# }

# $_ = "Bamm-bamm";
# if (/Bamm-?bamm/)
# {
#     print "It matched!\n";
# }


# $_ = "Bamm-------bamm";
# if (/Bamm-*bamm/)
# {
#     print "It matched!\n";
# }


# $_ = "Bamm         bamm";
# if (/Bamm *bamm/)
# {
#     print "It matched!\n";
# }

# $_ = "Bamm           bamm";
# if (/B.*m/)
# {
#     print "It matched!\n";
# }

#equal
# $_ = "Bamm           bamm";
# if (/B.*/)
# {
#     print "It matched!\n";
# }
# $_ = "Bamm           bamm";
# if (/.*B/)
# {
#     print "It matched!\n";
# }
# $_ = "Bamm           bamm";
# if (/B/)
# {
#     print "It matched!\n";
# }

# $_ = "Bamm           bamm";
# if (/Bamm +bamm/)
# {
#     print "It matched!\n";
# }

# $_ = "yabbbba dabbba doo.";
# if (/ab{3}a/)
# {
#     print "It matched!\n";
# }

# $_ = "yabbbba dabbba doo.";
# if (/ab{2,3}a/)
# {
#     print "It matched!\n";
# }


# $_ = "yabbbba dabbba doo.";
# if (/ab{3,}a/)
# {
#     print "It matched!\n";
# }

# $_ = "yabbbba dabbba doo.";
# if (/ab{0,5}a/)
# {
#     print "It matched!\n";
# }     


# $_ = "yabbbba dabbba doo.";
# if (/ab{,5}a/)
# {
#     print "It matched!\n";
# }     


# use v5.34.0;
# $_ = "yabbbba dabbba doo.";
# if (/ab{,999}a/)
# {
#     print "It matched!\n";
# } 


# $_ = "abba";
# if (/(.)\1/)
# {
#     print "It matched!\n";
# }     


# $_ = "yabba dabba doo.";
# if (/y(....) d\1/)
# {
#     print "It matched!\n";
# }     


# $_ = "yabba dabba doo.";
# if (/y(.)(.)\2\1/)
# {
#     print "It matched!\n";
# }


# $_ = "yabba dabba doo.";
# if (/y(....) d\1/)
# {
#     print "It matched!\n";
# }


# $_ = "yabba dabba doo.";
# if (/y((.)(.)\3\2) d\1/)
# {
#     print "It matched!\n";
# }

# $_ = "aa11bb";
# if (/(.)\g{1}11/)
# {
#     print "It matched!\n";
# }

# $_ = "aa11bb";
# if (/(.)\g{-1}11/)
# {
#     print "It matched!\n";
# }

# $_ = "xaa11bb";
# if (/(.)(.)\g{-1}11/)
# {
#     print "It matched!\n";
# }

# foreach ( qw(fred betty barney dino))
# {
#     if(/fred|barney/)
#     {
#         print "${_} matched!\n";
#     }
# }


# foreach ( qw(fred betty barney dino))
# {
#     if(/fred|barney|betty/)
#     {
#         print "${_} matched!\n";
#     }
# }

# $_ = "Fred Rubble";
# if (/(Fred|Wilma) Flintstone/)
# {
#     print "It matched!\n";
# }

# $_ = "fred  \t \t  barney";
# if (/fred( +|\t+)barney/)
# {
#     print "It matched!\n";
# }


# $_ = "fred  \t \t  barney";
# if (/fred( |\t)+barney/)
# {
#     print "It matched!\n";
# }


# $_ = "fred  \t \t  wilma";
# if (/fred |\tbarney/)
# {
#     print "It matched!\n";
# }


# $_ = "Bamm-Bamm";
# if (/Bamm-?(B|b)amm/)
# {
#     print "It matched!\n";
# }

# $_ = "The HAL-9000 requires authorization to continue.";
# if (/HAL-[0-9]+/)
# {
#     print "The string mentions some model of HAL computer.\n";
# }

# $_ = "Bamm-Bamm";
# if(/Bamm-?[Bb]amm/)
# {
#     print "The string has Bamm-Bamm\n";
# }

# $_ = "fred  \t \t  barney";
# if (/fred\s+barney/)
# {
#     print "It matched!\n";
# }


# $_ = "fred  \t \t  barney";
# if (/fred\h+barney/)
# {
#     print "It matched!\n";
# }

# $_ = "The HAL-9000 requires authorization to continue.";
# if (/HAL-\d+/)
# {
#     print "The string mentions some model of HAL computer.\n";
# }