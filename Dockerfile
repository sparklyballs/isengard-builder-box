FROM sparklyballs/isengard-builder

# Add local files
ADD src/ /root/

# Set build file volume
VOLUME /Build-Scripts

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# Start up file
RUN mv /root/firstrun.sh /etc/my_init.d/firstrun.sh && \
chmod +x /etc/my_init.d/firstrun.sh

