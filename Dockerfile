# syntax=docker/dockerfile:1

FROM ubuntu:22.04 AS builder

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        git \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN git clone --depth 1 https://github.com/gpertea/gffcompare.git \
    && make -C /tmp/gffcompare release

FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        libstdc++6 \
        zlib1g \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /tmp/gffcompare/gffcompare /usr/local/bin/gffcompare

WORKDIR /data
CMD ["gffcompare"]
