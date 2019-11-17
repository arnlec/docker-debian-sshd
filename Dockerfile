FROM debian:jessie

USER root
RUN apt-get -y update
RUN apt-get -y install openssh-server apt-utils sudo
RUN mkdir /var/run/sshd

RUN adduser ansible
RUN echo "%sudo ansible=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir /home/ansible/.sshd
RUN chown ansible:ansible /home/ansible/.sshd
RUN chmod 700 /home/ansible/.sshd

EXPOSE 22

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
