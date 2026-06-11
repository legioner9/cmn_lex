#!/bin/bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

git config --global user.email "legioner9@inbox.ru"
git config --global user.name "legioner9"