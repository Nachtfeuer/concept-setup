#!/bin/bash
ansible-playbook -K -D -i local -c local play.yml
if [ $? -gt 0 ]; then
    echo "==================================================="
    echo "Provisioning has failed!"
    echo "==================================================="
else
    echo "==================================================="
    echo "Provisioning has succeeded!"
    echo "Please do not changed provisioned files"
    echo "except for testing out things."
    echo "For persistency please update your 'setup' project!"
    echo "==================================================="
fi
