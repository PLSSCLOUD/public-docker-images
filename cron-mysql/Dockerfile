FROM ubuntu:18.04
WORKDIR /

COPY . .

RUN apt-get update && apt-get -y install parallel curl nano vim mysql-client msmtp msmtp-mta mailutils && apt-get -y autoremove && apt-get -y autoclean && apt-get -y clean
RUN chmod +x *.sh
ADD crond/crontab /etc/crontab
ADD mail/msmtprc /etc/msmtprc
RUN chmod 0644 /etc/crontab
RUN chmod 0600 /etc/msmtprc

ENTRYPOINT ["/entrypoint.sh"]
CMD /bin/bash