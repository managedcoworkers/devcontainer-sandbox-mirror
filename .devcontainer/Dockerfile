FROM ubuntu:22.04

# Avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    git \
    jq \
    tar \
    zip \
    unzip \
    ssh \
    make \
    cmake \
    ripgrep \
    tree \
    htop \
    vim \
    nano \
    python3 \
    python3-pip \
    nodejs \
    npm \
    golang \
    openjdk-21-jdk \
    ruby \
    php \
    composer \
    maven \
    sqlite3 \
    postgresql-client \
    redis-tools \
    gcc \
    g++ \
    htop \
    nload \
    iotop \
    sysstat \
    tree \
    watchman \
    && rm -rf /var/lib/apt/lists/*

# Install Rust via rustup
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Install mise
RUN curl https://mise.run | sh
ENV PATH="/root/.local/bin:${PATH}"
RUN echo 'eval "$(~/.local/bin/mise activate bash)"' >> /root/.bashrc

# Set working directory
WORKDIR /workspace
