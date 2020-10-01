FROM scratch

ENV APP_UID=10000 \
    APP_GID=10000

COPY /k8s-demo-app /
COPY static /static
COPY template.html /

USER ${APP_UID}:${APP_GID}

CMD ["k8s-demo-app"]
