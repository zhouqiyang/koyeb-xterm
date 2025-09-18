# Pull the baseimage.
FROM jlesage/baseimage-gui:alpine-3.19-v4

# Install xterm.
RUN add-pkg xterm

# Copy the start script.
COPY startapp.sh /startapp.sh

RUN chmod +x /startapp.sh

RUN echo 'app ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Set the application name.
RUN set-cont-env APP_NAME "Xterm"
