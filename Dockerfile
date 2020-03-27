  
FROM ubuntu:18.04

RUN apt-get update -y \
&& apt-get install -y git gnupg gawk wget

RUN echo "deb https://dl.bintray.com/sobolevn/deb git-secret main" | tee -a /etc/apt/sources.list
RUN wget -qO - https://api.bintray.com/users/sobolevn/keys/gpg/public.key | apt-key add -
RUN apt-get update -y \
&& apt-get install git-secret -y

ADD .bashrc /root/.bashrc