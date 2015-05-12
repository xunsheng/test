#!/usr/bin/perl -w

use strict; 

# This script takes:
#	(1) a raw mpileup file under the new samtools
#	(2) the title of the track (shows up on the left)
#       (3) the description for the track (shows up on the top)

# 	It is CRITICAL to realize that this script expects the chromosome in column 1 and the coordinate in column 2.
# 	If the file you enter doesn't conform to this convention, a bunch of crazy stuff is going to happen!
# 	Also, I'm assuming this is tab delimited.

if (@ARGV != 4)
  {die "usage:\n\t(1) path to pileup file\n\t(2) desired name (left side)\n\t(3) desired description (top)\n\t(4) column to make the value (i.e. I 662 c 14  would be \"3\").\n";}

my($file) = $ARGV[0];
my($incoming_file) = $file;
my($name) = $ARGV[1];
my($description) = $ARGV[2]; 
my $outwigs = $file;
$outwigs =~ s/.*\///;
