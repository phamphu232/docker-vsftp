# Use an official Debian 12 as a base image
FROM debian:12

# Update the package repository and install vsftpd openssh-server
RUN apt-get update && \
    apt-get install -y vsftpd && \
    cp /etc/vsftpd.conf /etc/vsftpd.conf.default && \
    apt-get install -y openssh-server && \
    cp /etc/ssh/sshd_config /etc/ssh/sshd_config.default

# Expose FTP port
EXPOSE 20 21 22

# Start vsftpd in the foreground
CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]
