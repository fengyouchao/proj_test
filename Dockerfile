FROM python:3.6.2
MAINTAINER nobody
ENV RABBITMQ_HOST "rabbitmq"
WORKDIR /root/
ADD requirements.txt /root/
RUN pip install -r requirements.txt
ADD start-web /usr/bin/start-web
ADD start-celery /usr/bin/start-celery
ADD code /web
CMD ["/usr/bin/start-web"]
EXPOSE 8000
