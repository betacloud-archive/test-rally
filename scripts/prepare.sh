#!/usr/bin/env bash

rally db recreate

rally env create --name betacloud --spec betacloud.yml 2>&1 > /dev/null
rally env check

rally deployment check
