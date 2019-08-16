FROM python:3.7.4-alpine
MAINTAINER Cloud BTS <cbts-cb.scm@nokia-sbell.com>

ENV http_proxy http://10.144.1.10:8080
ENV https_proxy https://10.144.1.10:8080
ENV PYTHONPATH /home/django_lib/lib/python3.7/site-packages/

COPY django_lib /home/django_lib
COPY usr/lib/* /usr/lib/

# RUN apk add --no-cache openldap-dev mariadb-dev

EXPOSE 80

VOLUME "/home/django"

CMD [ "/home/django/start.sh" ]
