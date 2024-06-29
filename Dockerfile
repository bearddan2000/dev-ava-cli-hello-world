FROM haskell

WORKDIR /workspace

RUN apt update && apt install -y git

RUN git clone https://github.com/owainlewis/ava.git

WORKDIR /workspace/ava

RUN stack --install-ghc build

RUN stack install

WORKDIR /code

COPY bin .

# 
# CMD "./run.sh"