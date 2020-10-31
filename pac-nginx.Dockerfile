FROM nginx:alpine


HEALTHCHECK --timeout=10s --start-period=60s \
    CMD curl --fail -I -L 'http://127.0.0.1/proxy.pac' || exit 1
