#!/usr/bin/env bash

set -eo pipefail


start() {
  exec screen -dmS mcs bash -c "${JAVA_HOME}/bin/java ${JAVA_OPTS} -jar ${JAR} nogui"
}

stop() {
  screen -p 0 -S mcs -X eval 'stuff "say §eSERVER RESTARTING IN 60 SECONDS..."\015'
  sleep 30
  screen -p 0 -S mcs -X eval 'stuff "say §eSERVER RESTARTING IN 30 SECONDS..."\015'
  sleep 15
  screen -p 0 -S mcs -X eval 'stuff "say §eSERVER RESTARTING IN 15 SECONDS..."\015'
  sleep 5
  for i in {10..1}; do
    screen -p 0 -S mcs -X eval "stuff 'say §eSERVER RESTARTING IN ${i} SECOND(S)...'\015"
    sleep 1
  done
  screen -p 0 -S mcs -X eval 'stuff "say §eSERVER RESTARTING..."\015'
  screen -p 0 -S mcs -X eval 'stuff "save-all"\015'
  screen -p 0 -S mcs -X eval 'stuff "stop"\015'

  while screen -list mcs > /dev/null; do
    echo "waiting..."
    sleep 1
  done

}

case "${1}" in
  start)
    start
    ;;

  stop)
    stop
    ;;

  *)
    echo "unknown"
    exit 1
    ;;
esac
