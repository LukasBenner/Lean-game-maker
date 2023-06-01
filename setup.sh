#!/bin/bash

if [[ -d ./venv ]]; then
	echo "Virtual environment already exists"
else 
	echo "Creating virtual environment"
	python -m venv ./venv;
fi
source ./venv/bin/activate
