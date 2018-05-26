# You should always specify a full version here to ensure all of your developers
# are running the same version of Node.
FROM ubuntu:xenial

ENV HOME /root
WORKDIR /root

RUN apt-get update && apt-get install -y apt-transport-https curl  &&\
	(echo "deb https://packages.cloud.google.com/apt cloud-sdk-xenial main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list) && \
	(curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -) && \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install \
		curl \
		google-cloud-sdk