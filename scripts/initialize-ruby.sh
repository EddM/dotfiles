#!/usr/bin/env bash

if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
else
    puterr "rbenv not installed"
    exit 1
fi

rbenv install 2.2.2 --skip-existing
rbenv global 2.2.2
gem update --system
gem install bundler
rbenv rehash
