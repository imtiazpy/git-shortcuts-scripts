#!/bin/bash

# ==============git custom commands==================

# git add, git commit and git push from HEAD
function push() {
  git add .
  git commit -m "$1"
  git push -u origin HEAD
}

# push to remote branch from local after rebasing with main
function rebase-and-push() {
  git add .
  git commit -m "$1"
  git pull --rebase origin main
  git push -u origin HEAD
}

# pull from remote main in local main
function pull() {
  git pull origin main
}

# only rebasing with remote main in local branch
function rebase() {
  git pull --rebase origin main
}

# checkout to main from any branch
function main() {
  git checkout main
}

