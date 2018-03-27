#!/bin/sh

BUMP=$(conventional-recommended-bump -p angular)

clog -F --"$BUMP" -C ${PLUGIN_CHANGELOG_FILE}

