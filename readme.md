# arnlec/debian-sshd

Openssh server based on debian/jessie image.

## Usage

User ansible have to be used to open a ssh session.

### Option 1: use ssh public key authentication

    docker run -d -e AUTHORIZED_KEY='<AUTHORIZED_KEY_VALUE>' arnlec/debian-sshd

### Option 2: use password authentication

    docker run -d -e ANSIBLE_PASSWORD='<password>' arnlec/debian-sshd

