#!/bin/bash
set -e

if [ "$1" = '/bin/bash' ]; then
    exec /bin/bash
fi

if [ "$1" = 'flask' ]; then
    exec flask "${@:2}"
fi

exec flask "$@"
