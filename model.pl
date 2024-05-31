#!/usr/bin/perl -w
use strict;
use CGI;

my $q = CGI->new();
print $q->header('text/html');

my $restful_uri = $q->path_info;

if ($restful_uri =~ m{^/(questions)/([1-9]+$)}) {
    questions($1, $2);
} elsif ($restful_uri =~ m{^/(users)/([1-9]+$)}) {
    users($1, $2);
}

sub questions {
    my ($object, $value) = @_;
    # This is a stub; replace with actual logic to return JSON or XML.
    print $q->p("GET question: $object -> $value");
}

sub users {
    my ($object, $value) = @_;
    # This is a stub; replace with actual logic to return JSON or XML.
    print $q->p("GET user: $object -> $value");
}
