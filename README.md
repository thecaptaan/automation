# Shell Scripting Cheat Sheet

A shell script is a computer program designed to be run by a Unix shell, a command-line interpreter. The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text. A script which sets up the environment, runs the program, and does any necessary cleanup or logging, is called a wrapper.

soucrce: [Wikipedia](https://en.wikipedia.org/wiki/Shell_script)

### Run Shell Script

First add executable permission to file
    
    $ touch <filename.sh>

    // set permission to run your file
    $ chmod +x ./<filename>.sh

The Run the file

    $ ./<filename>.sh

Run File without Permission

    $ bash <filename>.sh

### Print

    echo "Hello World!"

### Comment

    # echo "This is a comment"

=> # is used to define comments in shell


### Variable

    username="thecaptaan"

=> no space around = (equal to) sign

    echo $username

=> use $(dollar sign) to get the value of variable

### Special Variable

- **$$** => is used to print PID of current shell

- **$0** => is used to print the filename of current script

- **$#** => is used to the no of arguments passed to script

- **$?** => is used to get exit code of last command executed. 0 means run successfully & any no other than 0 mean that last command doesn't run successfull.

- **$n** => where as, n is a **Natural No**. **$n** contain arguments. Example 2 arguments has passed to script **$1** contain one argument & **$2** contain second argument.
- **$!** => to get PID of last background command.

- **\$\*** => All the arguments are double quoted. If a script receives two arguments,**\$\*** is equivalent to **$1** **$2**.

- **\$@** =>
All the arguments are individually double quoted. If a script receives two arguments, **\$@** is equivalent to **$1** **$2**.

- **env** => is used to check all ***ENVIRONMENT VARIABLE*** that is avilable in our system.
- **$PATH** = contain direcotry list to find executable of command that is entered in shell


### Mathematical Expression

method 1: 

    #!/bin/bash

    result=`expr 2 + 2`
    echo value

method 2:

    #!/bin/bash
    
    result=$(expr 2 + 2)
    echo result

method 3:

    #!/bin/bash

    value1=100
    value2=200
    result=$(($value1 + $value2))
    echo


### Input From user

    #!/bin/bash
    read output
    echo $output

=> read command is used to get input from user.

=> input value is stored in variable **output**.

### Array

Method 1:

    #!/bin/bash
    
    names=("The Captaan" "Ayush Anand" "Jhon Smith") 
    echo ${names[0]}

Method 2:

    #!/bin/bash

    name[0]="The Captaan"
    name[1]="Ayush Anand"
    name[2]="Jhon Smith"

=> Index will start with 0

=> to seprate the value use **space**

## Conditions

### If

    #!/bin/bash

    mynum=200
    if [ $mynum -eq 200 ]
    then
        echo "MyNum is equal to 200"
    fi

=> Keep space around square bracket.

=> 


### if else

    #!/bin/bash

    mynum=200
    if [ $mynum -eq 200]
    then
        echo "MyNum is equal to 200"
    else
        echo "MyNum is not equal tov200"
    fi

### example

    #!/bin/bash

    command=/usr/bin/htop

    if [ -f $command ]
    then
        echo "$command is avilable, let's run it ..."
    else
        echo "$command is NOT avilable, installing it ..."
        sudo apt update && sudo apt install htop -y

### Comparison Operators

- -d = directory
- -f = file
- -eq = is equal to
- -ne = is not equal to
- -gt = is greater than
- -ge = is greater than or equal to 
- -lt = is less than 
- -le = is less than or equal to
-

### Conditional

- ! => not eqal 
- -o => or
- -a => and

<br>
    #!/bin/bash

    read result
    if [ ! $result -eq 100 ]
    then

    fi

### while Loop

    #!/bin/bash

    counter=1
    while [ $counter -le 10 ]
    do
        echo $counter
        counter=$(($counter + 1))
    done

### For Loop

    #!/bin/bash

    for current_no in 1 2 3 4 5 6 7
    do
        echo $current_no
        sleep 1
    done

<br />

    #!/bin/bash

    for current_no in {1..10}
    do
        echo $current_no
        sleep 1
    done

### Data stream

### Functions

    functionName() {
        // statements
    }

    // callling the function
    functionName

### Case Statement

    #!/bin/bash

    read $value
    case $value in
        1) echo "";;
        2) echo "";;
        3) echo "";;
        4) echo "";;
        *) echo ""
    esac

### Scheduling Jobs

### Reference

- [ShellScript.sh](https://www.shellscript.sh/)
- [LearnLinuxTV Bash Playlist](https://www.youtube.com/watch?v=2733cRPudvI&list=PLT98CRl2KxKGj-VKtApD8-zCqSaN2mD4w)
