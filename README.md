# Bash Scripting Cheat Sheet

A shell script is a computer program designed to be run by a Unix shell, a command-line interpreter. The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text. A script which sets up the environment, runs the program, and does any necessary cleanup or logging, is called a wrapper.

soucrce: [Wikipedia](https://en.wikipedia.org/wiki/Shell_script)

### Print

    echo "Hello World!"

### Comment

    # echo "This is a comment"

### Variable

### Special Variable

- env => this command will print outl Global Varibale
- **$?** = is special varibale that conatin exit code
  mean that is program is runned successful or not
- **$PATH** =

### Array

### Mathematical Expression

### Input From user

    #!/bin/bash
    read output
    echo $output

### Conditional

- || => or
- && => and

### If

    #!/bin/bash

    mynum=200
    if [ $mynum -eq 200]
    then
        echo "MyNum is equal to 200"
    fi

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

- -d = directory
- -f = file
- -eq = equal then
- -ne = not eqal to
- -gt = greater than
- -le = less than or equal to

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
