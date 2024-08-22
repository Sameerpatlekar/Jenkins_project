#!/bin/sh
# A basic Maven entrypoint script

# If a command starts with an option, prepend `mvn`
if [ "${1#-}" != "$1" ]; then
  set -- mvn "$@"
fi

# If the first argument is `mvn`, set some default options
if [ "$1" = 'mvn' ]; then
  # Here you can set any default options or environment variables
  export MAVEN_OPTS="${MAVEN_OPTS} -Xmx512m"
fi

# Execute the provided command or fall back to the shell
# to pass multiple arguments we use $@
exec "$@"
