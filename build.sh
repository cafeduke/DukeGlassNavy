#!/bin/bash -e

BASEDIR=$(dirname $(readlink -f ${0}))
BASENAME=$(basename ${0})

THEME_HOME=$BASEDIR
THEME_NAME="DukeGlassNavy"

echo -n "Building Theme ..."
cd ${THEME_HOME}/../
rm -f ${THEME_HOME}/${THEME_NAME}.zip
zip -q ${THEME_HOME}/${THEME_NAME}.zip -r ${THEME_NAME}/gnome-shell ${THEME_NAME}/gtk-3.0 ${THEME_NAME}/gtk-4.0 ${THEME_NAME}/index.theme
echo " done"

cd ${THEME_HOME}
ls -l ${THEME_HOME}/${THEME_NAME}.zip

echo ""
echo -n "Installing theme ..."
rm -rf ${HOME}/.themes/${THEME_NAME}
unzip -q ${THEME_HOME}/${THEME_NAME}.zip -d ${HOME}/.themes
echo " done"
