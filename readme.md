# arnlec/debian-sshd

Openssh server based on debian/jessie image.

## Usage

    docker run -d -e AUTHORIZED_KEY='<AUTHORIZED_KEY_VALUE>' arnlec/debian-sshd


The value of AUTHORIZED_KEY variable is used to generate the authorized_keys file of ansible user.