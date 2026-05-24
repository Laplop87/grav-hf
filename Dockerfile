FROM lscr.io/linuxserver/grav:latest
ENV PORT=7860
ENV WEBUI_PORT=7860
ENV USER=admin
ENV PUID=1000
ENV PGID=1000
COPY fix-port.sh /fix-port.sh
RUN chmod +x /fix-port.sh
ENTRYPOINT ["/fix-port.sh"]
EXPOSE 7860
