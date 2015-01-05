#!/usr/bin/env bash

sed -i 's/main$/main universe/' /etc/apt/sources.list
apt-get -q update
apt-get -q -y install pkg-config g++ supercollider ruby libqscintilla2-l10n libqscintilla2-dev qt4-dev-tools ruby-dev cmake libffi-dev
