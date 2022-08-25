FROM plexinc/pms-docker as app_pms

FROM caddy:2 as app_caddy

COPY ./docker/caddy/Caddyfile /etc/caddy/Caddyfile