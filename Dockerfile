# Pinned alpine variant instead of bare "nginx":
# - pinning avoids surprise upgrades when the "latest" tag moves
# - alpine is ~8 MB vs ~190 MB for the default image: faster pulls,
#   faster CI builds, smaller attack surface
FROM nginx:1.27-alpine

COPY app/index.html /usr/share/nginx/html/index.html

# Exposes /stub_status on an internal port so the Prometheus exporter
# can read nginx metrics (see docker-compose.yml)
COPY nginx/status.conf /etc/nginx/conf.d/status.conf

# Docker itself checks that nginx is actually answering, not just that
# the process started - same concept as the ALB health check in my
# aws-highly-available-webapp-terraform project, one layer down.
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q --spider http://localhost/ || exit 1
