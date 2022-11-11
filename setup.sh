#!/bin/bash

if [[ -d ./venv ]]; then
	echo "Virtual environment already exists"
else 
	echo "Creating virtual environment"
	python -m venv new ./venv;
fi
source ./venv/bin/activate
pip install -e .
