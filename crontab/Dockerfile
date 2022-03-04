# docker build -t crondocker .
# docker push auriou/kestrel-systemd:latest
# docker run -d --privileged --name kestrel-systemd -v /sys/fs/cgroup:/sys/fs/cgroup:ro auriou/kestrel-systemd:latest
# docker exec -it kestrel-systemd bash

FROM mcr.microsoft.com/dotnet/runtime:3.1 AS base
# Install krb5 packages
RUN apt-get update \
    && apt-get install -y \
        cron krb5-config krb5-user

RUN (echo "* * * * * /bin/echo "Hello world" >> /var/log/cron.log 2>&1") | crontab -


ENTRYPOINT [ "service", "cron", "start" ]