FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    x11vnc \
    xvfb \
    chromium-browser \
    supervisor \
    && apt-get clean

COPY supervisord.conf /etc/supervisor/supervisord.conf

USER gitpod
