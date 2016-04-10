#!/usr/bin/env bash
ssh -t root@45.55.28.8 "cd /var/www/adventure-atlas && git pull && bash scripts/post-git-pull.sh"