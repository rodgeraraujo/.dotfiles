#!/bin/bash

DOTFILES_ROOT=$HOME/.dotfiles


function setup_gitconfig {
    # Copy gitconfig
    echo "setup .gitconfig"
    cp $DOTFILES_ROOT/git/gitconfig.template ~/.gitconfig

    # Get info from input
    read -p "Enter your name: " name
    read -p "Enter your email: " email
    read -p "Enter your github username: " github_username

    # Set gitconfig
    git config --global user.name "$name"
    git config --global user.email "$email"
    git config --global user.username "$github_username"
    git config --global github.user "$github_username"

    echo ".gitconfig setup complete"
}

setup_gitconfig
