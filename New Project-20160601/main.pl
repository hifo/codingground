use strict;

my $exit = 0;
my $first = 1;

my @traits = ("parent", "comedy", "time", "nature", "quiet", "subserviant", "animal", "combat", "intelligence", "food", "young", "lust", "relaxed", "religious", "magic", "stubborn");

my %characters = ( catherine => ["parent", "quiet", "food", "magic"],
                julia => ["parent", "magic"],
                red_herring => ["comedy", "nature", "animal"],
                xoracam => ["nature", "quiet", "subserviant", "combat", "intelligence"],
                fang => ["comedy", "nature", "animal", "combat", "young", "lust", "relaxed"]
                
        );
        
my @commands = ("0. Exit Program \r\n",
	        "1. Get all characters \r\n",
    	     "2. Get character traits \r\n",
    	     "3. Get all possible traits \r\n",
	        "4. Get the shared traits for any given characters (TODO) \r\n",
	        "5. Get all characters with a given trait (TODO) \r\n"
            );
            

sub get_names{
    #gets all the character names
    my @names = keys %characters;
    foreach(@names){
        print "$_\r\n";
    }
    print "\r\n";
}   

sub get_char_traits{
    #gets all the traits for a given character
    print "Which character?\r\n";
    print ": ";
    my $char = <>;
    chomp($char);
    $char = lc $char;
    print "Printing traits for $char\r\n";
    print "@{$characters{$char}}";
    print "\r\n";
}

sub get_all_traits{
    #gets all available character traits
    foreach(@traits){
        print "$_\r\n";   
    }
}

sub get_characters_with_trait{
    #gets all characters with a given trait
    print "Select a trait to display: ";
    my $trait = <>;
    chomp($trait);
    print "Your select trait: $trait";
    print "\r\n";
}

sub get_shared_traits{
    #gets the shared traits between two given characters
    print "Not yet implemented";
    print "\r\n";
}

while(!$exit){
    if($first){
        $first = 0;   
    }
    else{
        print "Press any key to continue";
        my $press = <>;
    }
    print "The following commands are available\r\n";
    foreach(@commands){
        print "$_";    
    }
    print "Select a command to execute by entering it's number: ";
    my $command = <>;
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
    elsif($command == 3){
        get_all_traits();
    }
    elsif($command == 4){
	get_characters_with_trait();
    }
    elsif($command == 5){
	get_shared_traits();
    }
}
