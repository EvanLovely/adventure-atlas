#!/usr/bin/env bash
composer install
cd web
../vendor/drush/drush/drush config-import -y
