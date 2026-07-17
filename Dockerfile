# Pinned alpine variant instead of bare "nginx":
# - pinning avoids surprise upgrades when the "latest" tag moves
# - alpine is ~8 MB vs ~190 MB for the default image: faster pulls,
#   faster CI builds, smaller attack surface
FROM nginx:1.27-alpine
COPY app/index.html /usr/share/nginx/html/index.html
