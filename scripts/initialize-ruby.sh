#!/usr/bin/env bash

if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
else
    puterr "rbenv not installed"
    exit 1
fi

rbenv install 2.1.3 --skip-existing
rbenv global 2.1.3
gem update --system
gem install bundler
rbenv rehash
