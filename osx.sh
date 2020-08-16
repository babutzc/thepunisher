#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
AUDIOFILE="${DIR}/backdoor.mp3"

osascript -e "set Volume 10"
pmset displaysleepnow
afplay -q 1 "${AUDIOFILE}"
