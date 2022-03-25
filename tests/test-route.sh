#!/bin/bash

routes=("https://vtj-integration-dev.apps.arodevtest.hel.fi" "https://hauki-api-dev.apps.arodevtest.hel.fi")

echo "Starting route testing: $(date)"



for ROUTE in ${routes[@]}
do
	status=$(curl -s -o /dev/null -w '%{http_code}' $ROUTE)
	if [[ $status -gt 0 ]]; then
		echo "Route working --- $ROUTE"
	else
		echo "Route $ROUTE has problems!"
		exit 1
	fi
done

exit 0
