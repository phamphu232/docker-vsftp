# docker-vsftp

## Setup

```
git clone https://github.com/phamphu232/docker-vsftp.git docker-vsftp && cd docker-vsftp
sudo chown root vsftpd.conf

docker-compose up -d

# (If any) Update file vsftp.conf
```


## Add user

```
# Syntax
docker exec -it con_vsftpd bash -c "useradd -m <UserName> && echo <UserName>:<Password> | chpasswd"
# Example
docker exec -it con_vsftpd bash -c "useradd -m takonote && echo 'takonote:Daito2368' | chpasswd"
```

## Build images and push images to docker hub

```
docker build -t phamphu232/vsftpd -f ./Dockerfile .
docker push phamphu232/vsftpd

docker build -t phamphu232/vsftpd:20231218 -f ./Dockerfile .
docker push phamphu232/vsftpd:20231218
```
