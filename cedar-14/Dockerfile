FROM friism/mono-builder:14
MAINTAINER friism

RUN apt-get -q -y install automake pkg-config libtool
RUN mkdir /app && curl https://s3.amazonaws.com/mono-dependencies/cedar-14/mono-3.10.0.tar.gz -s | tar zx -C /app

ADD build build
CMD ./build
