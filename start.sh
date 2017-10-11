#!/bin/sh

: ${TEMPLATE:?Variable TEMPLATE is required!}
: ${PARAMS:-""}
: ${TARGET:-""}

if [ -n "${NOTIFY_CONTAINER}" ]; then
    PARAMS="${PARAMS} -notify-sighup ${NOTIFY_CONTAINER}"
fi
if [ -n "${NOTIFY_PROCESS}" ]; then
    PARAMS="${PARAMS} -notify ${NOTIFY_PROCESS}"
fi

exec /usr/local/bin/docker-gen ${PARAMS} -watch /etc/docker-gen/templates/${TEMPLATE}.tmpl ${TARGET}