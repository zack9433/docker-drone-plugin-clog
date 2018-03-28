#!/bin/sh

git config --global user.email "isd@moxa.com"
git config --global user.name "isd.droneci"
git config --global push.default current

BUMP=$(conventional-recommended-bump -p angular)

LATEST_TAG=$(git describe --abbrev=0 --tags)

NEXT_TAG=$(semver -i "$BUMP" "$LATEST_TAG")

clog -F --"$BUMP" -C ${PLUGIN_CHANGELOG_FILE}

git tag -a "NEXT_TAG" -m "chore(release): bump up version! :rocket: [SKIP CI]"

git push --no-verify --follow-tags

