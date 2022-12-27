FROM ubuntu:latest

ARG DEBIAN_FRONTEND="noninteractive"
COPY reset-pass.sh /reset-pass.sh
COPY entrypoint.sh /entrypoint.sh
COPY nginx.conf /root/nginx-base.conf

RUN \
  apt-get update && \
  apt-get install -y nginx git && \
  git clone https://github.com/Hextris/hextris.git /root/app && \
  rm -rf /root/app/.git && \
  apt-get --purge autoremove -y git && \
  apt-get clean && \
  chmod +x /reset-pass.sh /entrypoint.sh && \
  rm -rf /config/* /tmp/* /var/lib/apt/lists/* /var/tmp/*

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]