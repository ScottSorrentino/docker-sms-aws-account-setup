FROM dtr.cucloud.net/cs/awscli

MAINTAINER Scott Sorrentino <sms249@cornell.edu>

RUN \
  gem install aws-sdk && \
  pip install pyyaml && \
  pip install troposphere

RUN \
  apt-get update && \
  apt-get -y install groff && \
  rm -rf /var/lib/apt/lists/*

# Probably not needed since the base image should handle
RUN \
  rm /etc/localtime && \
  ln -s /usr/share/zoneinfo/America/New_York /etc/localtime

ENV HOME /root
CMD ["bash"]



