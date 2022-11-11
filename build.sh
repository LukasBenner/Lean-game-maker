#!/bin/bash
cd src/interactive_interface
npm install
export NODE_OPTIONS=--openssl-legacy-provider
./node_modules/.bin/webpack --mode=production

