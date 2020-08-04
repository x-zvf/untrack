#!/bin/env perl

use strict;
use warnings;
use URI;

# change to script path for the filter file
use FindBin qw($RealBin);
chdir $RealBin;

sub help() {
    print "untrack.pl - removes trackers from URLs
USAGE:
    untrack.pl <URL>
(c) 2020 xzvf - github.com/x-zvf/untrack
";
exit 1;
}

my ($urlstr) = @ARGV;
defined $urlstr or help;
my $uri = URI->new($urlstr);
my $query = $uri->query;
$query or print $uri->as_string and exit;
my @qa = split /&/, $query;
# filter
open my $filter, '<', 'filterrules' or die "failed to open filterrules file";
while(my $rule = <$filter>) {
    chomp $rule;
    @qa = grep ! /$rule/, @qa;
}

# reconstruct URL
my $newquery = join '&', @qa;
$uri->query($newquery);
print $uri->as_string;

