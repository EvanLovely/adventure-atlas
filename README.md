# Adventure Atlas

## Setup

### Prerequisites

- `composer` installed
- `drush` installed
- ssh key setup for prod db

### Install dependencies

    composer install

### Install Site

    sudo cp web/sites/example.settings.local.php web/sites/default/settings.local.php

Create a new database locally, and adjust the settings in `settings.local.php` accordingly; see the file by executing `open web/sites/default/settings.local.php`.

### Grab Database

    cd web
    drush sql-sync @aa.prod @self

### Run Server

Either set up your own Apache server to point towards the `web/` directory, or run `drush runserver` in `web/`.

## Configuration

After making changes, run `drush config-export -y` and commit the files. If you just pulled or are deploying, run `drush config-import -y` to pull configuration changes present in the yaml files in `web/sites/default/config/sync/` into the database. Very similar to Features in Drupal 7.

## Install Drupal Modules

To install a new Drupal module, run this:

    composer require drupal/MODULE_NAME:@8.*

After enabling, do a `drush config-export -y`.
