#!/bin/sh

set -ex

echo 1 > /run/radvd/radvd.pid
exec radvd "$@"
