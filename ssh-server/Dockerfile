FROM ubuntu:latest
LABEL author = "jescruz"
LABEL description = "Local SSH server implementation"
RUN apt update && apt install openssh-server sudo -y
# creamos el usuario test
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
# cambiamos el password del usustio test a test
RUN echo 'test:test' | chpasswd
RUN service ssh start
# abrimos el puerto 22
EXPOSE 22
RUN chmod a+x /usr/sbin/
CMD ["/usr/sbin/sshd", "-D"]