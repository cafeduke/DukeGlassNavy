#!/bin/bash -e
BASEDIR=$(dirname $(readlink -f ${0}))
BASENAME=$(basename ${0})
THEMEDIR=$(readlink -f ${BASEDIR}/../)

gresource-extract ${THEMEDIR}/gtk-3.0/gtk.gresource .
