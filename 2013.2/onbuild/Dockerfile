FROM lstephen/haskell-platform:2013.2.0.0
MAINTAINER Levi Stephen <levi.stephen@gmail.com>

ENV SRC_DIR /usr/src/app

RUN mkdir -p ${SRC_DIR}

WORKDIR ${SRC_DIR}

ONBUILD COPY *.cabal ${SRC_DIR}/
ONBUILD COPY Setup.* ${SRC_DIR}/
ONBUILD RUN cabal install --only-dependencies --global

ONBUILD COPY . ${SRC_DIR}
ONBUILD RUN cabal install --global

