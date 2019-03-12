#!/usr/bin/env bash
#rm -fr build dist
VERSION=2.0
NAME="ThingPulse App Fairy"

pyinstaller --log-level=DEBUG \
            --noconfirm \
            build-on-mac.spec

#https://github.com/sindresorhus/create-dmg
create-dmg --overwrite "dist/$NAME.app"
mv "$NAME 0.0.0.dmg" "dist/$NAME-$VERSION.dmg"
