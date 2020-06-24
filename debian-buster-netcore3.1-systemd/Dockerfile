# docker build -t auriou/kestrel-systemd:latest .
# docker push auriou/kestrel-systemd:latest
# docker run -d --privileged --name kestrel-systemd -v /sys/fs/cgroup:/sys/fs/cgroup:ro auriou/kestrel-systemd:latest
# docker exec -it kestrel-systemd bash


FROM debian:10-slim

#ENV container docker
#ENV LC_ALL C
#ENV DEBIAN_FRONTEND noninteractive
ENV ASPNETCORE_URLS="http://+:80"
ENV DOTNET_RUNNING_IN_CONTAINER="true"

RUN apt-get update \
    && apt-get install -y \
        systemd systemd-sysv \
        net-tools \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -f /lib/systemd/system/multi-user.target.wants/* \
             /etc/systemd/system/*.wants/* \
             /lib/systemd/system/local-fs.target.wants/* \
             /lib/systemd/system/sockets.target.wants/*udev* \
             /lib/systemd/system/sockets.target.wants/*initctl* \
             /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* \
             /lib/systemd/system/systemd-update-utmp*

RUN apt-get update \
    && apt-get -y install wget

RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb

#RUN apt-get update; \
#    apt-get install -y apt-transport-https && \
#    apt-get update && \
#    apt-get install -y dotnet-sdk-3.1

RUN apt-get update; \
    apt-get install -y apt-transport-https && \
    apt-get update && \
    apt-get install -y aspnetcore-runtime-3.1

RUN apt-get install -y dotnet-runtime-3.1

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/lib/systemd/systemd"]