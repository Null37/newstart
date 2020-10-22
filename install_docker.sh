#!/bin/sh
mkdir /goinfre/$1/.brew && curl -fsSL https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /goinfre/$1/.brew
mkdir -p /tmp/.$(whoami)-brew-locks
mkdir -p /goinfre/$1/.brew/var/homebrew
ln -s /tmp/.$(whoami)-brew-locks /goinfre/$1/.brew/var/homebrew/locks
echo 'export PATH="/goinfre/$1/.brew/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="/goinfre/$1/.brew/bin:$PATH"' >> ~/.zshrc
ln -s /goinfre/$1/.brew ~/.brown
brew update && brew upgrade
mkdir -p /tmp/.$(whoami)-brew-locks
echo 'export PATH="$HOME/.brown/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.brown/bin:$PATH"' >> ~/.zshrc
brew install docker && brew install docker-machine
docker-machine create --driver virtualbox default
#echo "ifconfig eth1 192.168.99.50 netmask 255.255.255.0 broadcast 192.168.99.255 up" | docker-machine ssh null sudo tee /var/lib/boot2docker/bootsync.sh > /dev/null
docker-machine env
eval $(docker-machine env)
# and finally to test run:
docker --version
brew --version
