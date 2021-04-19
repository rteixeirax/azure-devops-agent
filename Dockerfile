FROM ubuntu:18.04

RUN apt-get update \
&& apt-get install -y
        ca-certificates \
        curl \
        jq \
        git \
        iputils-ping \
        libcurl4 \
        libicu60 \
        libunwind8 \
        netcat \
        libssl1.0

RUN apt-get update \
&& apt-get install -y
        apt-transport-https \
        dotnet-sdk-5.0 \
        aspnetcore-runtime-5.0

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]
