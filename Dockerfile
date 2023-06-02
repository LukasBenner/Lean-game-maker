FROM debian:bullseye
RUN apt update
RUN apt install curl git python3 python3-pip python3-venv gettext -y
RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y
RUN python3 -m pip install pipx
RUN python3 -m pipx ensurepath
RUN pipx install mathlibtools
RUN . ~/.profile
ENV PATH="$PATH:/root/.elan/toolchains/stable/bin"
RUN curl -sL https://deb.nodesource.com/setup_16.x | sh -
RUN apt -y install nodejs
WORKDIR /lean-game-maker
COPY . .
WORKDIR /lean-game-maker/src/interactive_interface
RUN npm install .
RUN ./node_modules/.bin/webpack --mode=production
WORKDIR /lean-game-maker
RUN pip3 install -e .
WORKDIR /lean-game