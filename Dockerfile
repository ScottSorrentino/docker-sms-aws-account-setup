FROM dtr.cucloud.net/cs/awscli

MAINTAINER Scott Sorrentino <sms249@cornell.edu>

RUN \
  gem install aws-sdk && \
  pip install pyyaml && \
  pip install troposphere


