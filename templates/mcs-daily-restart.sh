#!/usr/bin/env bash

set -eo pipefail

started_seconds() {
  local start_time="$(systemctl show mcs --property ExecMainStartTimestamp)"
  start_time="${start_time#*=}"
  local diff="$(( $(date "+%s") - $(date --date="${start_time}" "+%s") ))"

  echo "${diff}"
}

if [[ "$(started_seconds)" -lt 18000 ]]; then
  exit 0
fi

systemctl restart mcs
