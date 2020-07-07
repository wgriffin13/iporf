#!/bin/bash

set -o allexport
source ./.env
set +o allexport

if [ "$RUN_JUPYTER" == "true" ]; then
	jupyter notebook --no-browser --ip 0.0.0.0 --port 8888 --allow-root
fi
