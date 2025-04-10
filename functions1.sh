#!/bin/bash


# Basic function without parameters and return value

basic_function() {
	
        echo First function o/p
	echo Hello world

}

basic_function


#Function with input parameteres


function_with_parameters(){

	echo Second function o/p
	echo Hello $1 and $2
}

function_with_parameters Manasa Ajay


#Function with input parameteres and return value


function_with_parameters_and_returnvalue(){

	echo Third function o/p
	local firstname="$1"
	local secondname="$2"
	echo Hello $1 and $2
	local concatenatedstring=$firstname$secondname
	return ${#concatenatedstring}   #returns the length of concatenated string
}
function_with_parameters_and_returnvalue Manasa Ajay
 
echo total length of two names is $? 




# Taking input through command line

name1="$1"
name2="$2"

function_with_commandline_parameters_and_returnvalue(){

        echo Fourth function o/p
        echo Hello $name1 and $name2
        local concatenatedstring=$name1$name2
        return ${#concatenatedstring}
}
function_with_commandline_parameters_and_returnvalue

echo total length of two names is $?

