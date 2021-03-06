FROM gliderlabs/alpine:latest
MAINTAINER Junaid <example@example.com>
LABEL Description="Docker 10 Days - Build image for the Docker-Compose Sample app."

ADD . /sampleapp
WORKDIR /sampleapp
RUN apk-install python \
    python-dev \
    py-pip &&\
    pip install -r requirements.txt
CMD ["python", "app.py"]
