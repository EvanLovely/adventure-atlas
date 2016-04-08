#!/usr/bin/env bash
ssh -t root@45.55.28.8 "cd /var/www/adventure-atlas/web && git pull && ../vendor/drush/drush/drush config-import -y"