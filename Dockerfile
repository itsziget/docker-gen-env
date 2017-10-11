FROM jwilder/docker-gen:0.7.3

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT []

CMD ["/bin/sh", "-c", "/start.sh"]