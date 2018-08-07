FROM circleci/buildpack-deps

RUN apk --no-cache add \
        bash \
        less \
        groff \
        jq \
        git \
        curl \
        python \
        py-pip

RUN pip install --upgrade pip \
        awscli==$AWSCLI_VERSION \
        awsebcli==$AWSEBCLI_VERSION

RUN curl -L https://github.com/barnybug/cli53/releases/download/0.8.7/cli53-linux-386 > /usr/bin/cli53 && \
    chmod +x /usr/bin/cli53

ENV PAGER="less"

# Expose credentials volume
RUN mkdir ~/.aws

RUN aws --version
RUN eb --version
