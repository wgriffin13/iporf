#!/bin/bash

set -o allexport
source ./.env
set +o allexport

if [ "$RUN_JUPYTER" == "true" ]; then
	pip3 install -r requirements.txt
	jupyter notebook --no-browser --ip 0.0.0.0 --port 8888 --allow-root
fi
