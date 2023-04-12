#!/usr/bin/env bash

source env/env.host
source env/env.user
source env/env.install

export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_CALLBACKS_ENABLED=profile_tasks
ansible-playbook -i "$ANSIBLE_INVENTORY" \
 -u "$USER" \
 -e "dataprep_branch=$DATAPREP_BRANCH" \
./ansible/install/dataprep.yml