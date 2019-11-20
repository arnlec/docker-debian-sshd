FROM debian:jessie

USER root
RUN apt-get -y update
RUN apt-get -y install openssh-server apt-utils sudo python
RUN mkdir /var/run/sshd

RUN adduser ansible
RUN echo "ansible ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir /home/ansible/.ssh
RUN chown ansible:ansible /home/ansible/.ssh
RUN chmod 700 /home/ansible/.ssh

EXPOSE 22

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
