#!/bin/bash
set -ev

# update package image
docker pull azukiapp/fpm

# call publish script from the container
azk shell package -c 'bash package-creation/21-package-deb-12.sh' -e AZK_VERSION=$AZK_VERSION