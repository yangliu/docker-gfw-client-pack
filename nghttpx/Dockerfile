FROM debian:jessie
MAINTAINER yangliu <i@yangliu.name>

ADD apps /root/apps
ADD init.sh /root/
ADD start-nghttpx /root/

RUN chmod +x /root/init.sh /root/start-nghttpx
RUN /root/init.sh

EXPOSE 8080
CMD ["/root/start-nghttpx"]