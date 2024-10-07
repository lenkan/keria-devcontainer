FROM python:3.12.3-alpine3.20
RUN apk add --no-cache \
    bash \
    curl \
    build-base \
    alpine-sdk \
    libffi-dev \
    libsodium \
    libsodium-dev \
    git
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
