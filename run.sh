#!/bin/bash

function normal()
{

python3 -m venv $loc/.venv

source $loc/.venv/bin/activate

$loc/.venv/bin/pip install --upgrade pip

$loc/.venv/bin/pip3 install --upgrade pip

$loc/.venv/bin/pip3 install -r requirements.txt

}

loc=$PWD

echo """welcome to venv creator script
this script will create a .venv folder for the app 'my_wallet' to be able to run.
press [enter] to create or type 'q' to cancel"""
echo -n ''
read option

if [ -z "$option" ]; then
	normal;
elif [ "$option" == "q" ]; then
	exit 0;
fi;
