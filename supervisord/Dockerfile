# docker build -t supervisord-test .
FROM mcr.microsoft.com/dotnet/runtime:3.1
RUN apt-get update
RUN apt-get install -y supervisor cron
RUN (echo "* * * * * /bin/echo "Hello world" >> /var/log/cron.log 2>&1") | crontab -
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]