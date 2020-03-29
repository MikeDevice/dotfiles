#!/usr/bin/env bash

function format_milliseconds_timestamp () {
  local timestamp=${1}

  date +"%d.%m.%Y, %H:%M" -d @${timestamp:0:-3}
}
