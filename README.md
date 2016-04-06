# Adventure Atlas

## Setup

### Prerequisites

- `composer` installed
- `drush` installed
- ssh key setup for prod db

### Install dependencies

    composer install

### Install Site

    sudo cp drupal/sites/example.settings.local.php drupal/sites/default/settings.local.php

Create a new database locally, and adjust the settings in `settings.local.php` accordingly; see the file by executing `open drupal/sites/default/settings.local.php`.

### Grab Database

    cd drupal
    drush sql-sync @aa.prod @self
