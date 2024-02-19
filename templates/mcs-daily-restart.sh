#!/usr/bin/env bash

set -eo pipefail

started_seconds() {
  local start_time
  start_time="$(systemctl show "${1}" --property ExecMainStartTimestamp)"
  start_time="${start_time#*=}"
  local diff="$(( $(date "+%s") - $(date --date="${start_time}" "+%s") ))"

  echo "${diff}"
}

# Restart mcs if it has been running for more than 5 hours
if [[ "$(started_seconds "mcs")" -gt 18000 ]]; then
  systemctl restart mcs
fi

# Restart velocity if it has been running for more than 20 hours
if  [[ -n "$(systemctl list-units -t service --full --all --plain --no-legend velocity.service)" ]] && \
    [[ "$(started_seconds "velocity")" -gt 72000 ]]; then
  systemctl restart velocity
fi
