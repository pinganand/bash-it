#!/bin/bash
# anand's customizations
export PATH=$PATH:$HOME/.ccm/repository/2.0.1/bin:${HOME}/src/github.com/twitter/scalding/scripts

# Echoes to stderr
#  usage: echoe hello there
echoe() { echo "$@" 1>&2; }

# Finds the first directory matching the given directory name pattern (gfind)
#  usage: goto scalding
function goto() {
    local d=$(find ~/src/ -type d -name $1 -print -quit)
    [[ -z ${d} ]] && echoe $1 not found && return 1
    cd ${d}
}


##
## Android SDK
##
export ANDROID_SDK=/usr/local/Cellar/android-sdk/22.6.2
export ANDROID_NDK=/usr/local/Cellar/android-ndk/r9d
