#!/usr/bin/env bash
set -eu

cd $GALAXY_INSTALL_DIR

$GALAXY_VIRTUAL_ENV/bin/uwsgi \
  --logdate \
  --thunder-lock \
  --master \
  --http :8080 \
  --pythonpath lib \
  --virtualenv $GALAXY_VIRTUAL_ENV \
  --module 'galaxy.webapps.galaxy.buildapp:uwsgi_app()' \
  -b 16384 \
  --enable-threads \
  --die-on-term \
  --yaml config/galaxy.yml