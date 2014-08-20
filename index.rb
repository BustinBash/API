require 'sinatra'
require 'json'
get '/' do
	response.headers['Access-Control-Allow-Origin'] = '*'
	content_type :json
	DATABASE.to_json
end

DATABASE = {
  "Lesson1" => {
    "Answer" => "pwd",
    "Branches" => [ "usa", "mexico", "canada" ],
    "Error" => "Seems like you didn't print the working directory.  Try again.",
    "Hint" => "You want to Print the Working Directory to continue.",
    "ID" => 1,
    "Instructions" => "pwd (print working directory)=> This command will return the path of the directory you are currently in.",
    "Question" => "Print out the current working directory.",
    "Success" => "/BustinBash",
    "Target" => "",
    "Title" => "Print Working Directory"
    "Show" => "",
    "Hide" => ""
  },
  "Lesson2" => {
    "Answer" => "ls",
    "Branches" => [ "usa", "mexico", "canada" ],
    "Error" => "Seems like you didn't type 'ls'.  Try again.",
    "Hint" => "List the Directory.",
    "ID" => 2,
    "Instructions" => "ls is used to display the contents of a directory. It is an extremely useful command that you'll use all the time, so get use to it! ",
    "Question" => "Display the contents of the current directory..",
    "Success" => "ca ny tx",
    "Target" => "",
    "Title" => "List Directory / Files",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson3" => {
    "Answer" => "cd usa",
    "Branches" => [ "ca", "ny", "tx" ],
    "Error" => "Seems like you didn't type change your directory to 'usa'.  Try again.",
    "Hint" => "You need to Change the Directory to 'usa' continue.",
    "ID" => 3,
    "Instructions" => "cd (change directory)=> This command accepts arguments in the form of file structure in order to traverse the system.  For example=> 'cd usa' will change your working directory to /BustinBash/usa'.",
    "Question" => "Change your current directory to /usa",
    "Success" => "/usa",
    "Target" => "usa",
    "Title" => "Change Directory",
    "Show" => "'.states, #divider3'",
    "Hide" => ""
  },
  "Lesson4" => {
    "Answer" => "cd ..",
    "Branches" => [ "ca", "ny", "tx" ],
    "Error" => "Seems like you didn't traverse up one level in your directory.  Try again.",
    "Hint" => "Please Change Directories to continue.",
    "ID" => 4,
    "Instructions" => "You can change up directories by using the 'cd' command combined with the '..' syntax. This will move up on level in your directory tree. You can travel up as many levels as you want. For example, to travel up three levels, you would type=> 'cd ../../../'",
    "Question" => "Change your current directory to /BustinBash",
    "Success" => "/BustinBash",
    "Target" => "BustinBash",
    "Title" => "Change Directory",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson5" => {
    "Answer" => "cd usa/ca/san_francisco",
    "Branches" => [ "ca", "ny", "tx" ],
    "Error" => "Seems like you didn't navigate to the proper directory.  Try again.",
    "Hint" => "Please change to the '/usa/ca/san_francisco' directory to continue.",
    "ID" => 5,
    "Instructions" => "You can cd into a directory fast by specifiying the path to that folder. If I wanted to cd into newyork_city I would type 'cd usa/ny/newyork_city'.",
    "Question" => "Change directories to san_francisco'.",
    "Success" => "usa/ca/san_francisco",
    "Target" => "san_francisco",
    "Title" => "Change Directory",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson6" => {
    "Answer" => "touch the_bay.txt",
    "Error" => "oops! Looks like you didn't create a new file called the_bay.txt",
    "Hint" => "just type touch then the filename to create a new file",
    "ID" => 6,
    "Instructions" => "You can create new files easily with the touch command. Creating a new file is super easy! Just type 'touch' then the name of the file you would like to create.",
    "Question" => "Create a new file called the_bay.txt",
    "Success" => "",
    "Title" => "Create File",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson7" => {
    "Answer" => "rm the_bay.txt",
    "Error" => "oops! Looks like you delete the newly created file called the_bay.txt",
    "Hint" => "just type 'rm' then the filename to delete the file",
    "ID" => 7,
    "Instructions" => "You can delete the file by typing 'rm' followed by filename.",
    "Question" => "Delete the file called the_bay.txt",
    "Success" => "File Deleted",
    "Title" => "Delete File",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson8" => {
    "Answer" => "cd ..",
    "Branches" => [ "san_francisco", "newyork_city", "austin" ],
    "Error" => "Seems like you didn't traverse up one level in your directory.  Try again.",
    "Hint" => "Please Change Directories to continue (cd ..)",
    "ID" => 8,
    "Instructions" => "Please cd back to 'san_francisco' folder.",
    "Question" => "Change your current directory to /ca",
    "Success" => "/ca",
    "Target" => "ca",
    "Title" => "Change Directory",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson9" => {
    "Answer" => "mkdir marin",
    "Branches" => [ "ggpark.txt", "crissyfield.txt", "giants.txt" ],
    "Error" => "Seems like you didn't create a directory called 'marin'.  Try again!",
    "Hint" => "You'll want to make use of the 'mkdir' command",
    "ID" => 9,
    "Instructions" => "Creating directories is an integral part of using Bash. A directory is a folder on your computer that contains other folders and files. To create a new directory we use the 'mkdir' command followed by the directory name.",
    "Question" => "Make a new directory in the san_francisco directory called marin.",
    "Success" => "mkdir marin",
    "Target" => "san_francisco",
    "Title" => "Make Directory",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson10" => {
    "Answer" => "rmdir marin",
    "Branches" => "",
    "Error" => "Seems like you didn't delete the directory correctly.  Try again.",
    "Hint" => "Please delete the directory marin to continue.",
    "ID" => 10,
    "Instructions" => "You can remove a folder easily with 'rmdir' followed by the directory name.",
    "Question" => "Delete the marin directory",
    "Success" => "",
    "Target" => "san_francisco",
    "Title" => "Remove Directory",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson11" => {
    "Answer" => "echo Bustin Bash",
    "Error" => "Seems like you didn't type the command correctly.  Try again.",
    "Hint" => "try typing something like 'echo your sentence here.'",
    "ID" => 11,
    "Instructions" => "The command 'echo' is used display text to the console. For example, '$echo Hey Universe' prints 'Hey Universe' to the screen. This is an example of Bash's STDOUT, or Standard Output, which is the output of a command. ",
    "Question" => "Print 'Bustin Bash' out to the console.",
    "Success" => "Bustin Bash",
    "Title" => "echo/STDOUT",
    "Show" => "",
    "Hide" => ""
  }
}


