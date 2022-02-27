#!/bin/sh

set -e

. $(dirname $0)/utilities.sh

npx web-ext lint $web_ext_options
