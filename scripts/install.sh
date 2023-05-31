#!/bin/bash

set -e

(cf uninstall-plugin "FirehosePlugin" || true) && go build -o firehose-plugin . && cf install-plugin firehose-plugin
