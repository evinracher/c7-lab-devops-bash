FROM ubuntu:latest

# Add the script to the Docker Image
ADD connect.sh /root/connect.sh

# Give execution rights on the cron scripts
RUN chmod +x /root/connect.sh

#Install Cron
RUN apt-get update
RUN apt-get -y install cron expect openssh-server

# Add the cron job
RUN crontab -l | { cat; echo "*/10 * * * * /root/connect.sh > /root/out.log"; } | crontab -

# Run the command on container startup
CMD /etc/init.d/cron start