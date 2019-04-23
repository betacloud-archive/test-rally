#!/usr/bin/env bash

rally task validate tasks/task.yaml --task-args-file tasks/task-arguments.yaml
rally task start tasks/task.yaml --task-args-file tasks/task-arguments.yaml
