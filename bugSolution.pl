my %hash = ( a => 1, b => 2, c => 3 );
my @keys = keys %hash; # Create a copy of keys before iteration

foreach my $key (@keys) {
    print "Key: $key, Value: $hash{$key}\n";
    if ($key eq 'b') {
        delete $hash{$key}; # Modification after iterating through all keys
    }
}

#Alternatively:
#Using a while loop and manipulating the hash safely
my %hash2 = (a => 1, b => 2, c => 3);
while (my ($key, $value) = each %hash2) {
    print "Key: $key, Value: $value\n";
    if ($key eq 'b') {
        delete $hash2{$key};
    }
}
#This is safer because each modifies the hash implicitly, so changes within the loop are properly handled.