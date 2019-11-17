#!/bin/bash

if [[ -v AUTHORIZED_KEY ]]; then
    echo $AUTHORIZED_KEY > /home/ansible/.ssh/authorized_keys
    chown ansible:ansible /home/ansible/.ssh/authorized_keys
    chmod 600 /home/ansible/.ssh/authorized_keys
fi

/usr/sbin/sshd -D && tail -f /dev/null