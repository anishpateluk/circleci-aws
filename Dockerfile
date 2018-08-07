FROM circleci/python:2.7-jessie

ENV AWSCLI_VERSION=1.15.72

RUN sudo -H pip install awscli==$AWSCLI_VERSION

RUN aws --version
