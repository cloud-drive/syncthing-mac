#!/bin/bash

bin=${1:-../syncthing/bin/syncthing}

rm -rf Syncthing.app Syncthing.zip

cp -a app Syncthing.app
cp "$bin" Syncthing.app/Contents/Resources/syncthing
chmod 755 Syncthing.app/Contents/Resources/syncthing

zip -r Syncthing.zip Syncthing.app

