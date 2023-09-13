#!/usr/bin/env bash
source /usr/local/s2i/install-common.sh

injected_dir=$1
echo "Running on injected_dir=${injected_dir}"

install_modules ${injected_dir}/modules

$JBOSS_HOME/bin/jboss-cli.sh --file="${injected_dir}/adapter-elytron-install-offline.cli"

echo "End CLI configuration"