#!/usr/bin/env bash
rsync -ahivv --delete-after --dry-run weekly.1/ weekly.0/
