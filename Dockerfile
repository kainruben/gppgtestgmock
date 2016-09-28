FROM ubuntu:latest

RUN apt-get update \
&& apt-get -y install \
	gcc \
	cmake \
    make \
    curl \
	automake \
	g++ \
	google-mock \
&& rm -rf /var/lib/apt/lists/*

# build cmake 
RUN curl -O https://cmake.org/files/v3.4/cmake-3.4.3.tar.gz \
	&& tar -xvf cmake-3.4.3.tar.gz
WORKDIR cmake-3.4.3
RUN ./bootstrap \
	&& make \
	&& make install
	
#Compile gtest	
WORKDIR /usr/src/gtest
RUN cmake .
RUN make
RUN mv libg* /usr/lib/

#Compile gmock
WORKDIR /usr/src/gmock
RUN cmake .
RUN make
RUN mv libg* /usr/lib/

RUN mkdir /tmp/cppgtestgmock/
WORKDIR /tmp/cppgtestgmock/

