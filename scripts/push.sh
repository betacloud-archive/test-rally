#!/usr/bin/env bash

uuid=$(rally task list --status finished --uuids-only | head -n 1)

./mc mb --ignore-existing betacloud/travis-test-rally/
./mc mb --ignore-existing betacloud/travis-test-rally/latest/
./mc policy public betacloud/travis-test-rally/latest/

./mc cp results/$uuid.html betacloud/travis-test-rally/latest/report.html
./mc cp results/$uuid.json betacloud/travis-test-rally/latest/results.json

timestamp=$(date +%Y%m%d-%H%M)
./mc cp results/$uuid.html betacloud/travis-test-rally/$timestamp.html
./mc cp results/$uuid.json betacloud/travis-test-rally/$timestamp.json
