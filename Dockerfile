  
FROM ubuntu:18.04

RUN sed -i 's,^path-exclude=/usr/share/man/,#path-exclude=/usr/share/man/,' /etc/dpkg/dpkg.cfg.d/excludes
RUN apt-get update -y \
&& apt-get install -y git gnupg gawk wget man manpages-posix

RUN echo "deb https://dl.bintray.com/sobolevn/deb git-secret main" | tee -a /etc/apt/sources.list
RUN wget -qO - https://api.bintray.com/users/sobolevn/keys/gpg/public.key | apt-key add -
RUN apt-get update -y \
&& apt-get install git-secret -y

ADD HOWTO /HOWTO
RUN echo "cat /HOWTO" > /root/.bashrc
