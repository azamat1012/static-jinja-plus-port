FROM ubuntu:24.04

ARG STATICJINJAPLUS_VERSION=latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3.12 \
    python3.12-venv \
    python3-pip \
    git \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN python3.12 -m venv /opt/venv

RUN /opt/venv/bin/pip install --no-cache-dir --upgrade pip && \
    /opt/venv/bin/pip install --no-cache-dir "staticjinjaplus${STATICJINJAPLUS_VERSION:+==${STATICJINJAPLUS_VERSION}}"

ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /workspace

CMD ["staticjinjaplus", "build"]