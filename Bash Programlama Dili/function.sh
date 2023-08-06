#!/bin/bash

# function name(parameter){
	# statement
# }

function print_func {
	echo "inner function"
}

print_func

function func_with_param {
	echo $1
	echo $2
}

func_with_param 'param1' 'param2'

func_name(){
 echo 'function without function keyword'
}

func_name

var='out_func'
echo $var

function local_var {
	local var='func_param1'
	var2=5
	echo $var $var2
}

local_var

echo $var

print_ls(){
	echo 'print_ls function'
	return ls
}

print_ls
echo $? #return value

ls() {
	command ls -la
}

ls