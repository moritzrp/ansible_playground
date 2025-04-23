FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
  apt install -y openssh-server sudo && \
  apt clean

RUN useradd -m -s /bin/bash ansible && \
  echo "ansible:ansible" | chpasswd && \
  mkdir -p /home/ansible/.ssh && \
  chmod 700 /home/ansible/.ssh && \
  chown ansible:ansible /home/ansible/.ssh

RUN echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir /run/sshd && \
  chmod 0755 /run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
