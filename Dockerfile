FROM friism/mono-builder
MAINTAINER friism

RUN apt-get -q -y install automake pkg-config
RUN apt-get -q -y install libtool
RUN mkdir /app && curl https://s3.amazonaws.com/mono-dependencies/mono-3.2.8.tar.gz -s | tar zx -C /app

ADD build build
CMD ./build
