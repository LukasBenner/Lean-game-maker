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

Install [`nodejs`](https://nodejs.org/en/download/) v18
Newer versions of nodejs may break the installation because of deprecated packages.

Install [`gettext`](https://www.gnu.org/software/gettext/), if it's not already installed. 


Clone the repository. Inside the virtual environment and in the root folder of the repository, type 
```bash
cd src/interactive_interface
npm install .
NODE_OPTIONS=--openssl-legacy-provider ./node_modules/.bin/webpack --mode=production
cd ../..

pip3 install -e .
```

or un the script `buil.sh`.

After that, the executable `make-lean-game` is installed in the virtual environment.

## Lean Server
To make an interactive webpage, the javascript Lean server is used. In this repository, javascript servers for Lean 3.50.3 are provided. If you're working with a different version, you need to add the required files to `src/interactive_interface/lean_server` or respectively `src/interactive_interface/lean_server/leanprover-community`.You would need three files, named `lean_js_js.js`, `lean_js_wasm.js` and `lean_js_wasm.wasm`.
You may find these files for most versions of lean in the following links:
- [https://github.com/leanprover-community/lean/releases](https://github.com/leanprover-community/lean/releases)
- [https://github.com/leanprover-community/lean-nightly/releases](https://github.com/leanprover-community/lean-nightly/releases)
