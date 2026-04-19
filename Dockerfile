FROM ubuntu:24.04

LABEL org.opencontainers.image.source="https://github.com/forestfire2397/gh-actions-egg" \
      org.opencontainers.image.description="GitHub Actions runner base image" \
      org.opencontainers.image.licenses="MIT"

ENV DEBIAN_FRONTEND=noninteractive

# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    jq \
    libicu74 \
    libkrb5-3 \
    libssl3 \
    tar \
    unzip \
    zlib1g \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/container
CMD ["/bin/bash"]
