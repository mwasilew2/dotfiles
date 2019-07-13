#!/usr/bin/env bash
rsync -achivv --delete-after --dry-run ./1_home/ michal@192.168.0.164:~/backup/
