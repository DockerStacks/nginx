#!/bin/bash

set -eo pipefail

echo "upstream php-upstream { server ${CONTAINER_NAME}:${PORT}; }" > /etc/nginx/conf.d/upstream.conf

initialize_system() {
    root=${root:-/var/www}
}

# configure default value file
sed 's,{{root}},'"${root}"',g' -i /etc/nginx/sites-available/default.conf

exec "$@"
