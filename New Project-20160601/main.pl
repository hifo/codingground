$exit = 0;

%characters = (fang => ["fighter", "canid", "quadraped"],
	       joey => ["canid", "quadraped"],
	       bridget => ["intelligent", "time magic"],
	       tyaxha => ["intelligent", "fighter"],
	       dani => ["time magic"]
        );
        
%commands = (0 => "0. Exit Program \r\n",
	     1 => "1. Get all characters \r\n",
	     2 => "2. Get character traits \r\n",
	     3 => "3. Get all possible traits (TODO) \r\n",
	     4 => "4. Get the shared traits for any given characters (TODO) \r\n",
	     5 => "5. Get all characters with a given trait (TODO) \r\n"
            );
            
@names = keys %characters;

sub get_names{
    #gets all the character names
    foreach(@names){
        print "$_\r\n";
    }
    print "\r\n";
}   

sub get_char_traits{
    #gets all the traits for a given character
    print "Which character?\r\n";
    print ": ";
    $char = <>;
    chomp($char);
    $char = lc $char;
    print "Printing traits for $char\r\n";
    print "@{$characters{$char}}";
    print "\r\n";
}

sub get_all_traits{
    #gets all available character traits
}

sub get_characters_with_trait{
    #gets all characters with a given trait
}

sub get_shared_traits{
    #gets the shared traits between two given characters
}

while(!$exit){
    print "The following commands are available\r\n";
    @commandnames = keys %commands;
    for $command (@commandnames){ 
	print $commands{$command};
    }
    print "Select a command to execute by entering it's number: ";
    $command = <>;
    chomp($command);
    if($command == 1){
	get_names();
    }
    elsif($command == 0){
	$exit = 1;
    }
    elsif($command == 2){
	get_char_traits();
    }
}
