FROM ubuntu:12.04
MAINTAINER Levi Stephen <levi.stephen@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends curl

WORKDIR /
RUN curl -L https://www.haskell.org/platform/download/2014.2.0.0/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz | tar xz
RUN /usr/local/haskell/ghc-7.8.3-x86_64/bin/activate-hs



