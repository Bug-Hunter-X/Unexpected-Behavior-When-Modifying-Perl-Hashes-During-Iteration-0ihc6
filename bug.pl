my %hash = ( a => 1, b => 2, c => 3 );
foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#This will print all keys and values of the hash.
#However if you modify the hash inside the loop it will lead to unexpected results.