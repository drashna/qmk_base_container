FROM debian:trixie-slim

RUN apt-get update && apt-get install --no-install-recommends -y \
    avrdude \
    avr-libc \
    binutils-avr \
    gcc-avr \
    binutils-arm-none-eabi \
    binutils-riscv64-unknown-elf \
    build-essential \
    ca-certificates \
    clang-format \
    dfu-programmer \
    dfu-util \
    dos2unix \
    ca-certificates \
    gcc \
    gcc-arm-none-eabi \
    gcc-riscv64-unknown-elf \
    git \
    libfl2 \
    libnewlib-arm-none-eabi \
    picolibc-riscv64-unknown-elf \
    python3 \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    python3-nose2 \
    python3-yapf \
    python3-flake8 \
    tar \
    teensy-loader-cli \
    unzip \
    tar \
    wget \
    zip \
    && rm -rf /var/lib/apt/lists/*

# Install python packages
RUN python3 -m pip install --break-system-packages uv appdirs
