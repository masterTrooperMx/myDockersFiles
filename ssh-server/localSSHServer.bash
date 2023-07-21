# construir la imagen de docker
docker build -t jescruz:localSSH .

docker images
#REPOSITORY                       TAG                       IMAGE ID       CREATED        SIZE
#jescruz                          localSSH                  d3abaffc0d1d   2 hours ago    229MB

# arrancar la imagen de docker
docker run -d -P --name test_sshd_container jescruz:localSSH

docker port test_sshd_container
#22/tcp -> 0.0.0.0:55002

ssh test@127.0.0.1
#[13:18:35] jescruz :: Jesuss-MacBook-Pro  ➜  dev/Docker/ssh-server » ssh test@127.0.0.1                                  255 ↵
#The authenticity of host '127.0.0.1 (127.0.0.1)' can't be established.
#ED25519 key fingerprint is SHA256:kGZFaXfyLeZVeticnt6kqeAFdBrPcIVWrRvONabEnY0.
#This host key is known by the following other names/addresses:
#    ~/.ssh/known_hosts:4: localhost
#Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
#Warning: Permanently added '127.0.0.1' (ED25519) to the list of known hosts.
#(test@127.0.0.1) Password:
#test