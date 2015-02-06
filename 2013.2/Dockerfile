FROM ubuntu:trusty
MAINTAINER Levi Stephen <levi.stephen@gmail.com>

RUN apt-get update \
  && apt-get install -y --no-install-recommends haskell-platform=2013.2.0.0.debian3
RUN cabal update
RUN cabal install --global Cabal

CMD [ "ghci" ]

