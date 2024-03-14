#!/bin/bash

PLUGIN_NAME="restock"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -o../plugins/$PLUGIN_NAME.smx
