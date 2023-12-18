# Use an official Debian 12 as a base image
FROM debian:12

# Update the package repository and install vsftpd
RUN apt-get update && \
    apt-get install -y vsftpd && \
    cp /etc/vsftpd.conf /etc/vsftpd.conf.original

# Expose FTP port
EXPOSE 20 21

# Start vsftpd in the foreground
CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]
