# https://docs.docker.com/get-started/nodejs/build-images/
# https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
# https://docs.gitlab.com/runner/install/docker.html
# https://stackoverflow.com/questions/41935435/understanding-volume-instruction-in-dockerfile
FROM gitlab/gitlab-runner:alpine
LABEL net.skafapps.version="0.0.1-beta"
LABEL vendor1="Skaf Apps"
LABEL net.skafapps.release-date="2020-10-28"
LABEL net.skafapps.version.isproduction=""

RUN apk add --update --no-cache --repository="http://dl-cdn.alpinelinux.org/alpine/edge/main" \
    curl \
    vim \
    sed \
    attr \
    dialog \
    bash \
    bash-completion \
    grep \
    python3 \
    libuv \
    npm

ENTRYPOINT ["/bin/bash"]