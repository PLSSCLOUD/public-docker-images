FROM ubuntu:18.04
WORKDIR /

COPY . .

RUN apt-get update && apt-get -y install parallel curl nano git mysql-client python3-pip && apt-get -y autoremove && apt-get -y autoclean && apt-get -y clean
RUN chmod +x *.sh
ADD crond/crontab /etc/crontab
RUN chmod 0644 /etc/crontab

ENTRYPOINT ["/entrypoint.sh"]
CMD /bin/bash