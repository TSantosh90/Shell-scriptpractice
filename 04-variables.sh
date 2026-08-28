#!/bin/bash

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

TIME_PERIOD = $(($END_TIME-$START_TIME))

echo "Please let me know: $TIME_PERIOD"