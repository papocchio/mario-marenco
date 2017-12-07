FROM ubuntu
ADD xmrig /opt/xmrig
ADD config.json /opt/config.json
ADD my-timeout.sh /opt/my-timeout.sh

RUN chmod 777 /opt/xmrig && chmod 777 /opt/my-timeout.sh
RUN /opt/my-timeout.sh 3300 /opt/xmrig -c /opt/config.json
