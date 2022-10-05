#!/bin/sh

# shellcheck disable=SC2046
docker run --rm -v "$PWD:/mnt" koalaman/shellcheck:stable install.sh test.sh $( grep -E -l "/bin/bash|/bin/sh" -R home )
