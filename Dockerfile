FROM node:10.15.3-alpine

# Installs latest Chromium package
RUN echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
  && echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories \
  && apk add --no-cache \
  chromium@edge \
  harfbuzz@edge \
  nss@edge \
  freetype@edge \
  ttf-freefont@edge \
  && rm -rf /var/cache/* \
  && mkdir /var/cache/apk

# Add Chrome as a user
RUN mkdir -p /app \
  && adduser -D chrome \
  && chown -R chrome:chrome /app

# Run Chrome as non-privileged
USER chrome
WORKDIR /app