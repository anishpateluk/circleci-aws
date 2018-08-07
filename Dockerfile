FROM circleci/python:2.7-jessie

ENV AWSCLI_VERSION=1.15.72

RUN pip install --user awscli==$AWSCLI_VERSION
