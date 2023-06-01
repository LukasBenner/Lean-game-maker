# Lean Game Maker full install guide

This guide assumes you use a Debian-based Linux (e.g. Ubuntu), although
it may hopefully be somewhat relevant to more exotic operating systems.
It will install this software in an isolated environment. Of course this
means wasting some space, but it guarantees no unwanted side effects.

## Setup virtual environment

Create a virtual environment in the current folder with 
```bash
python -m venv ./venv
```
or run the script `setup.sh`.


## Install Lean-game-maker

Install [`nodejs`](https://nodejs.org/en/download/) v16.20.0.
Newer versions of nodejs may break the installation because of deprecated packages.

Install [`gettext`](https://www.gnu.org/software/gettext/), if it's not already installed. 


Clone the repository. Inside the virtual environment and in the root folder of the repository, type 
```bash
cd src/interactive_interface
npm install .
./node_modules/.bin/webpack --mode=production
cd ../..

pip3 install -e .
```

or un the script `buil.sh`.

After that, the executable `make-lean-game` is installed in the virtual environment.