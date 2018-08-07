FROM circleci/buildpack-deps

ENV AWSCLI_VERSION=1.15.72
ENV AWSEBCLI_VERSION=3.14.3

USER root

RUN apt-get update && \
    apt-get install -y python-pip python-dev && \
    pip install --upgrade awscli==$AWSCLI_VERSION && \
    pip install --upgrade awsebcli==$AWSEBCLI_VERSION

USER circleci

RUN aws --version && eb --version
