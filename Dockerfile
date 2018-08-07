FROM circleci/buildpack-deps

USER root

RUN apt-get update && \
    apt-get install -y python-pip python-dev && \
    pip install --upgrade awscli==$AWSCLI_VERSION && \
    pip install --upgrade awsebcli==$AWSEBCLI_VERSION

USER circleci

RUN aws --version && eb --version
