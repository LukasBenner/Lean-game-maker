#!/bin/bash
cd src/interactive_interface
npm install .

./node_modules/.bin/webpack --mode=production

cd ../..

pip install -e .