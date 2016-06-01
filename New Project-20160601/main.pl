#
# Hello World Program in Perl
#
use Switch;

$exit = 0;
%chars = ('Fang' => ["fighter", "canid", "quadraped"],
            'Joey' => ["canid", "quadraped"],
            'Bridget' => ["intelligent", "time magic"],
            'Tyaxha' => ["intelligent", "fighter"],
            'Dani' => ["time magic"]
        );
        
%commands = (1 => "get_names",
                2 => "exit"    
            );
            
@names = keys %chars;

sub get_names{
    foreach(@names){
        print "$_\r\n";
    }
}   

while(!$exit){
    print "The following commands are available\r\n";
    print "1. Get All Characters\r\n";
    print "2. Exit Program \r\n";
    print "Select a command to execute by entering it's number: ";
    $command = <>;
    switch($command){
        case 1 {
            get_names();   
        }
        case 2 {
           $exit = 1; 
        }
    }
}
