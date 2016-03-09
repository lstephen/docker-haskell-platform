FROM debian:jessie
MAINTAINER Levi Stephen <levi.stephen@gmail.com>

RUN apt-get update && apt-get install -y curl

WORKDIR /
COPY HASKELL_PLATFORM_VERSION /HASKELL_PLATFORM_VERSION

RUN curl -L https://haskell.org/platform/download/$(cat /HASKELL_PLATFORM_VERSION)/haskell-platform-$(cat /HASKELL_PLATFORM_VERSION)-unknown-posix-x86_64.tar.gz | tar xz
RUN ./install-haskell-platform.sh
