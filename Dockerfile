FROM ubuntu:24.04
RUN apt-get update && apt-get install -y software-properties-common 
RUN add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update \
    && apt-get install -y \
        python3.12 \
        python3.12-venv \
        python3-pip \
        tmux \
        bash \
        jq \
        libsodium-dev \
        git

ARG USERNAME=keria
ARG UID=1002
RUN useradd -u ${UID} ${USERNAME}
USER ${USERNAME}
WORKDIR /home/${USERNAME}

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="~/.cargo/bin:${PATH}"
