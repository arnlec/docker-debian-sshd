#!/bin/bash

if [[ -v AUTHORIZED_KEY ]]; then
    echo $AUTHORIZED_KEY > /home/ansible/.sshd/authorized_keys
    chown ansible:ansible /home/ansible/.sshd/authorized_keys
    chmod 600 /home/ansible/.sshd/authorized_keys
fi

/usr/sbin/sshd -D && tail -f /dev/null