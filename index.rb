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
    "Instructions" => "pwd (print working directory): This command will return the path of the directory you are currently in.",
    "Question" => "Print out the current working directory.",
    "Success" => "/BustinBash",
    "Target" => "",
    "Title" => "Print Working Directory",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson2" => {
    "Answer" => "ls",
    "Branches" => [ "usa", "mexico", "canada" ],
    "Error" => "Seems like you didn't type 'ls'.  Try again.",
    "Hint" => "List the Directory.",
    "ID" => 2,
    "Instructions" => "ls (list directory / file): This command will return the contents of a directory. It is an extremely useful command that you'll use all the time, so get use to it!",
    "Question" => "Display the contents of the current directory.",
    "Success" => "usa, mexico, canada",
    "Target" => "",
    "Title" => "List Directory / Files",
    "Show" => "",
    "Hide" => ""
  },
  "Lesson3" => {
    "Answer" => "cd usa",
    "Branches" => [ "ca", "ny", "tx" ],
    "Error" => "Seems like you didn't type change your directory to 'usa'.  Try again.",
    "Hint" => "You need to Change the Directory to 'usa' to continue.",
    "ID" => 3,
    "Instructions" => "cd (change directory): This command accepts arguments in the form of file structure in order to traverse the system.  For example, 'cd usa' will change your working directory to '/BustinBash/usa.'",
    "Question" => "Change your current directory to /usa",
    "Success" => "/usa",
    "Target" => "usa",
    "Title" => "Change Directory",
    "Show" => ".states, #divider3",
    "Hide" => ""
  },
  "Lesson4" => {
    "Answer" => "cd ..",
    "Branches" => [ "ca", "ny", "tx" ],
    "Error" => "Seems like you didn't traverse up one level in your directory.  Try again.",
    "Hint" => "Please Change Directories to continue.",
    "ID" => 4,
    "Instructions" => "You can change up directories by using the 'cd' command combined with the '..' syntax. This will move up on level in your directory tree. You can travel up as many levels as you want. For example, to travel up three levels, you would type, 'cd ../../../'",
    "Question" => "Change your current directory to /BustinBash",
    "Success" => "/BustinBash",
    "Target" => "BustinBash",
    "Title" => "Change Directory",
    "Show" => "#divider4",
    "Hide" => "#marin"
  },
  "Lesson5" => {
    "Answer" => "cd usa/ca/san_francisco",
    "Branches" => [ "ca", "ny", "tx" ],
    "Error" => "Seems like you didn't navigate to the proper directory.  Try again.",
    "Hint" => "Please change to the '/usa/ca/san_francisco' directory to continue.",
    "ID" => 5,
    "Instructions" => "You can cd into a directory fast by specifiying the path to that folder. If you want to cd into newyork_city you would type 'cd usa/ny/newyork_city'.",
    "Question" => "Change directories to san_francisco'.",
    "Success" => "usa/ca/san_francisco",
    "Target" => "san_francisco",
    "Title" => "Change Directory",
    "Show" => ".states, .cities, .places, #divider3, #divider4",
    "Hide" => "#the_bay"
  },
  "Lesson6" => {
    "Answer" => "touch the_bay.txt",
    "Error" => "oops! Looks like you didn't create a new file called the_bay.txt",
    "Hint" => "just type touch then the filename to create a new file",
    "ID" => 6,
    "Instructions" => "touch (creation of file): This command will allow you to create new files easily. Simply type 'touch' followed by the name of the file you wish to create.",
    "Question" => "Create a new file entitled the_bay.txt",
    "Success" => "",
    "Title" => "Create File",
    "Show" => ".states, .cities, .places, #divider3, #divider4, #the_bay",
    "Hide" => "#marin"
  },
  "Lesson7" => {
    "Answer" => "rm the_bay.txt",
    "Error" => "oops! Looks like you delete the newly created file called the_bay.txt",
    "Hint" => "just type 'rm' then the filename to delete the file",
    "ID" => 7,
    "Instructions" => "rm (remove): This command will allow you to delete a file by typing 'rm' followed by the filename.",
    "Question" => "Delete the file entitled the_bay.txt",
    "Success" => "File Deleted",
    "Title" => "Delete File",
    "Show" => ".states, .cities, .places, #divider3, #divider4",
    "Hide" => "#the_bay, #marin"
  },
  "Lesson8" => {
    "Answer" => "cd ..",
    "Branches" => [ "san_francisco", "newyork_city", "austin" ],
    "Error" => "Seems like you didn't traverse up one level in your directory.  Try again.",
    "Hint" => "Please Change Directories to continue (cd ..)",
    "ID" => 8,
    "Instructions" => "Please cd back to the 'ca' folder.",
    "Question" => "Change your current directory to /ca",
    "Success" => "/ca",
    "Target" => "ca",
    "Title" => "Change Directory",
    "Show" => ".states, .cities, #divider3",
    "Hide" => "#marin"
  },
  "Lesson9" => {
    "Answer" => "mkdir marin",
    "Branches" => [ "ggpark.txt", "crissyfield.txt", "giants.txt" ],
    "Error" => "Seems like you didn't create a directory called 'marin'.  Try again!",
    "Hint" => "You'll want to make use of the 'mkdir' command",
    "ID" => 9,
    "Instructions" => "mkdir (make directory): This command allows you to create new directories. A directory is a folder on your computer that contains other folders and files. To create a new directory we use the 'mkdir' command followed by a directory name.",
    "Question" => "Make a new directory in the san_francisco directory entitled 'marin'.",
    "Success" => "mkdir marin",
    "Target" => "san_francisco",
    "Title" => "Make Directory",
    "Show" => ".states, .cities, #divider3, #marin",
    "Hide" => ""
  },
  "Lesson10" => {
    "Answer" => "rmdir marin",
    "Branches" => "",
    "Error" => "Seems like you didn't delete the directory correctly.  Try again.",
    "Hint" => "Please delete the directory marin to continue.",
    "ID" => 10,
    "Instructions" => "rmdir (remove directory): You may remove a folder by using 'rmdir' followed by the directory name.",
    "Question" => "Delete the marin directory",
    "Success" => "",
    "Target" => "san_francisco",
    "Title" => "Remove Directory",
    "Show" => ".states, .cities, #divider3",
    "Hide" => "#marin"
  },

  "Lesson11" => {
    "Answer" => "cd",
    "Error" => "Seems like you didn't type the command correctly.  Try again.",
    "Hint" => "try typing something like, hmmm, 'cd'.",
    "ID" => 11,
    "Instructions" => "cd (change directory): The command 'cd' without any further syntax is used to return you to your home directory.",
    "Question" => "Please go back to Home Directory; 'BustinBash' in this case.",
    "Success" => "You are on Home Directory",
    "Title" => "Back to Home Directory",
    "Branches" => [ "usa", "mexico", "canada" ],
    "Target" => "Bustin Bash"

  },

  "Lesson12" => {
    "Answer" => "echo Bustin Bash",
    "Error" => "Seems like you didn't type the command correctly.  Try again.",
    "Hint" => "try typing something like 'echo your sentence here.'",
    "ID" => 12,
    "Instructions" => "echo (the dolphin): This command 'echo' is used display text to the console. For example, '$echo Hey Universe' prints 'Hey Universe' to the screen. This is an example of Bash's STDOUT, or Standard Output, which is the output of a command. ",
    "Question" => "Print Bustin Bash out to the console.",
    "Success" => "Bustin Bash",
    "Title" => "echo/STDOUT",
    "Show" => "",
    "Hide" => ".states, .cities, .places, #divider3, #divider4"
  },

  "Lesson13" => {
    "Answer" => "cd usa/ca/san_francisco",
    "Error" => "Seems like you didn't type the command correctly.  Try again.",
    "Hint" => "cd into san_francisco",
    "ID" => 13,
    "Instructions" => "We're gonna need to cd into foggy san_francisco to manipulate some text files...",
    "Question" => "cd into san_francisco",
    "Success" => "",
    "Title" => "cd",
      "Show" => ".states, .cities, .places, #divider3, #divider4",
    "Hide" => "#the_bay"
    },

    "Lesson14" => {
    "Answer" => "echo Hello World > ggpark.txt",
    "Error" => "oops! harness the power of redirection!.",
    "Hint" => "You can redirect STOUT like this: echo hello world > ggpark.txt",
    "ID" => 14,
    "Instructions" => "One of bash's most powerful utilities is its ability to redirect output, input, and send the results of one command to another. To redirect standard output, we use the '>' command, followed by the place we would like to send it to.",
    "Question" => "Redirect the result of printing out Hello World to the screen to our ggpark.txt file",
    "Success" => "",
    "Title" => "Redirection",
   "Show" => ".states, .cities, .places, #divider3, #divider4",
    "Hide" => "#the_bay"
    },

    "Lesson15" => {
    "Answer" => "cat ggpark.txt",
    "Error" => "Seems like you didn't type the command correctly.  Try again.",
    "Hint" => "Type cat followed by the file name you'd like to open",
    "ID" => 15,
    "Instructions" => "cat (catalog): This command will allow you to review the contents of a file by using the syntax, 'cat' followed by the file name.",
    "Question" => "Open up the contents of ggpark.txt",
    "Success" => "Hello World",
    "Title" => "Cat",
    "Show" => ".states, .cities, .places, #divider3, #divider4",
    "Hide" => "#the_bay"
},
    "Lesson16" => {
    "Answer" => "cp ggpark.txt yo.txt",
    "Error" => "Seems like you didn't copy ggpark.txt to yo.txt!",
    "Hint" => "Here's a little help: cp ggpark.txt yo.txt",
    "ID" => 16,
    "Instructions" => "Good job! You're catching on fast... cp (copy): This command allows you to copy files by taking the name of the files you'd like to copy followed by the name of a new file.",
    "Question" => "Copy the contents of 'ggpark.txt' to a new file called 'yo.txt'.",
    "Success" => "",
    "Title" => "Copy",
    "Show" => ".states, .cities, .places, #divider3, #divider4, #yo",
    "Hide" => "#the_bay"
    },
    "Lesson17" => {
    "Answer" => "mv yo.txt foggy_nights.txt",
    "Error" => "",
    "Hint" => "Move should work like this: mv [file] [new file]",
    "ID" => 17,
    "Instructions" => "mv (move): This command is a little confusing to use at first as it is used to both rename a file or folder, OR to move a file or folder to another location. We suggest you try it out on your local terminal to check out its funcionality. mv takes two arguments just like cp, moving the first filename to the second one",
    "Question" => "Rename 'yo.txt' to 'foggy_nights.txt'",
    "Success" => "",
    "Title" => "Move",
    "Show" => ".states, .cities, .places, #divider3, #divider4, #foggy",
    "Hide" => "#the_bay, #yo"
    },
    "Lesson18" => {
    "Answer" => "read input",
    "Error" => "Looks like you didn't capture the STDIN from the user...",
    "Hint" => "Try 'read input'",
    "ID" => 18,
    "Instructions" => "STDIN stands for standard input, and is the source of input in all bash programs. An example of this is input from the keyboard. You can use the 'read' command followed by a string to hold input in a variable.",
    "Question" => "read in a users input and set it to a variable called input",
    "Success" => "..",
    "Title" => "STDIN",
    "Show" => ".states, .cities, .places, #divider3, #divider4, #foggy",
    "Hide" => "#the_bay, #yo"
    },
    "Lesson19" => {
    "Answer" => "I love bash",
    "Error" => "Looks like you didn't capture the STDIN from the user...",
    "Hint" => "Just type I love bash",
    "ID" => 19,
    "Instructions" => "Now set the value of input to the sentence 'I love bash'.",
    "Question" => "",
    "Success" => "",
    "Title" => "STDIN",
    "Show" => ".states, .cities, .places, #divider3, #divider4, #foggy",
    "Hide" => "#the_bay, #yo"
    },
    "Lesson20" => {
    "Answer" => "echo $input",
    "Error" => "oops! Didn't echo out the input!",
    "Hint" => "Just type I love bash",
    "ID" => 20,
    "Instructions" => "You can access variables in bash by using the dollar sign ($). Try printing out the variable you just set, input, out to the screen.",
    "Question" => "",
    "Success" => "I love bash",
    "Title" => "Variables",
    "Show" => ".states, .cities, .places, #divider3, #divider4, #foggy",
    "Hide" => "#the_bay, #yo"
    }
}


