#!/usr/bin/env bash
#rm -fr build dist
pyinstaller --log-level=DEBUG \
            --noconfirm \
            build-on-mac.spec

#https://github.com/sindresorhus/create-dmg
create-dmg --overwrite "dist/ThingPulse App Fairy.app"
mv "ThingPulse App Fairy 0.0.0.dmg" "dist/ThingPulse-App-Fairy.dmg"
