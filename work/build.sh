#!/bin/bash -e
BASEDIR=$(dirname $(readlink -f ${0}))
BASENAME=$(basename ${0})
THEME_HOME=$(readlink -f ${BASEDIR}/../)
THEME_NAME="DukeGlassNavy"

echo "Generating ${THEME_NAME}.gresource"
gresource-create gresource ${THEME_NAME}

echo ""
echo "Updating ${THEME_NAME}.gresource"
cp ${THEME_NAME}.gresource ${THEME_HOME}/gtk-3.0/gtk.gresource
ls -l ${THEME_NAME}.gresource ${THEME_HOME}/gtk-3.0/gtk.gresource

echo ""
echo "Build archive"
cd ${THEME_HOME}/../
rm -f ${THEME_HOME}/${THEME_NAME}.zip
zip -q ${THEME_HOME}/${THEME_NAME}.zip -r ${THEME_NAME}/gnome-shell ${THEME_NAME}/gtk-3.0 ${THEME_NAME}/index.theme

cd ${THEME_HOME}
ls -l ${THEME_HOME}/${THEME_NAME}.zip

