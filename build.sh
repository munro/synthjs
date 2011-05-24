#!/bin/sh

# I'm using air-config.xml because that has the right triggers
# for flash 10 compilation.

mxmlc -load-config $HOME/local/flex/frameworks/air-config.xml GenerateAudio.as

