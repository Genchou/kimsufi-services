FROM plexinc/pms-docker as app_pms

ENV PLEX_DATA ${PLEX_DATA}

# COPY ./docker/entrypoint.sh /usr/local/bin/docker-entrypoint
# RUN chmod +x /usr/local/bin/docker-entrypoint

# ENTRYPOINT [ "docker-entrypoint" ]

FROM caddy:2 as app_caddy

COPY ./docker/caddy/Caddyfile /etc/caddy/Caddyfile