FROM rust:latest
WORKDIR /home/src
RUN apt-get update && apt-get install -y pkg-config build-essential libssl-dev openssl cmake curl
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v21.8/protoc-21.8-linux-x86_64.zip
RUN unzip protoc-21.8-linux-x86_64.zip
RUN mv bin/protoc /usr/local/bin
RUN rm -rf bin/
RUN cargo install wasm-pack
