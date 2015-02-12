FROM lstephen/haskell-platform:2014.2.0.0
MAINTAINER Levi Stephen <levi.stephen@gmail.com>

ENV SRC_DIR /usr/src/app

RUN mkdir -p ${SRC_DIR}

WORKDIR ${SRC_DIR}

ONBUILD COPY *.cabal Setup.* ${SRC_DIR}/
ONBUILD RUN cabal install --only-dependencies --global

ONBUILD COPY . ${SRC_DIR}
ONBUILD RUN cabal install --global

