# docker-vsftp

## Setup

```
git clone https://github.com/phamphu232/docker-vsftp.git docker-vsftp && cd docker-vsftp
sudo chown root:root vsftpd.conf sshd_config

docker-compose up -d

# (If any) Update file vsftp.conf 
# (If any) Update file sshd_config
```


## Add user

```
# Syntax
docker exec -it con_vsftpd bash -c "useradd -m <UserName> && echo <UserName>:<Password> | chpasswd"
# Example
docker exec -it con_vsftpd bash -c "useradd -m demo && echo 'demo:Demo2368' | chpasswd"

# Remove
docker exec -it con_vsftpd bash -c "userdel demo && rm -r /home/demo"
```

## Build images and push images to docker hub

```
docker build -t phamphu232/vsftpd -f ./Dockerfile .
docker push phamphu232/vsftpd

docker build -t phamphu232/vsftpd:20231218 -f ./Dockerfile .
docker push phamphu232/vsftpd:20231218
```
