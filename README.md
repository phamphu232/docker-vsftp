# docker-vsftp

## Build images and push images to docker hub

```
docker build -t phamphu232/vsftpd -f ./Dockerfile .
docker push phamphu232/vsftpd

docker build -t phamphu232/vsftpd:20231218 -f ./Dockerfile .
docker push phamphu232/vsftpd:20231218
```

## Add user

```
# Syntax
docker exec -it con_vsftpd sh -c "useradd -m -s <UserName> && echo <UserName>:<Password> | chpasswd"
# Example
docker exec -it con_vsftpd sh -c "useradd -m -s takonote && echo 'takonote:Daito@2368' | chpasswd"
```
