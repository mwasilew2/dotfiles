#!/usr/bin/env bash

trap "echo Booh!" SIGINT SIGTERM

ssh-add ~/path_to_ssh_key
