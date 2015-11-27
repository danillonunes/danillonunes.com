#!/bin/bash

cd http/sites/default/settings
cp default.secret.settings.php secret.settings.php

sed -i s/DB_NAME/$DB_NAME/ secret.settings.php
sed -i s/DB_USER/$DB_USER/ secret.settings.php
sed -i s/DB_PASSWORD/$DB_PASSWORD/ secret.settings.php
sed -i s/DB_HOST/$DB_HOST/ secret.settings.php
sed -i s/DB_PREFIX/$DB_PREFIX/ secret.settings.php

cd /danillonunes

exec "$@"
