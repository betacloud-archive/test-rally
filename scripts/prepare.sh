#!/usr/bin/env bash

rally db recreate

rally env create --name betacloud --spec betacloud.yml 2>&1 > /dev/null
rally env check

rally deployment check

wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc

./mc config host add betacloud https://files.betacloud.de $MINIO_ACCESS_KEY $MINIO_SECRET_KEY
