#!/bin/sh
REPO_ROOT=$(git rev-parse --show-toplevel)
ALIAS_ATTACHMENT="alias res=\"f() { cd $REPO_ROOT/; make $1 };f\""

case $SHELL in
    */zsh)
        # assume Zsh
        echo $ALIAS_ATTACHMENT >> ~/.zshrc;;
    */bash)
        # assume Bash
        echo $ALIAS_ATTACHMENT >> ~/.bashrc;;
    *)
        # assume something else ;;
    esac
