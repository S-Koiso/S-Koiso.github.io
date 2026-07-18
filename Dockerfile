FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl wget gdebi-core

RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.5.57/quarto-1.5.57-linux-arm64.deb \
    && dpkg -i quarto-1.5.57-linux-arm64.deb \
    && rm quarto-1.5.57-linux-arm64.deb


WORKDIR /project
EXPOSE 4200