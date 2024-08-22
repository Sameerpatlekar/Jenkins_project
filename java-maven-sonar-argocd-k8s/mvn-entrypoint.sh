#!/bin/bash
# This script ensures that the passed command is run after the entrypoint script

set -e

# Run the command passed as argument to the script or default to "mvn"
exec "$@"
