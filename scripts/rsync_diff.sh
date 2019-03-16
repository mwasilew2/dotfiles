#!/usr/bin/env bash
rsync -vvahi --delete-after --dry-run weekly.1/ weekly.0/
