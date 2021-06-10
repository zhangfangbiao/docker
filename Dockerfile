FROM node:lts-alpine3.12

LABEL AUTHOR="none" \
      VERSION=0.1.4

ARG KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDQc89Tk/aaJzs/ljalHn86QPiSEm7AacFNtOO76I43wqrcJqcFLxZB43L47B/NWHlieYGgYY1EhH0K30g17CHr1Gb8wfXpsjEZRDrzHZkvG40eWTrJp5kne+rHkqyhrw9RW/uYEUZ2D9KkI6MXF3/VZ9GHNvJI+7iTk0HmK/X8+1N6LZ5V6kEigufxFoB2IJpL4OZdwpwup3a9CVFT4R+7sCRR3RyDOi7nUdfB96nheq3MQFKrXv+DoyjnfLFdvdV3uyxJCfXpylItmbtv9Y8CnX9BejktjtI6+IYkxJzYUR8sCpGg19I5IoLFShFvGTCrFF4BOXFvRiIF/sM9+CeD2bcCj7oXCeBW+4Zj4cEe5yveBdjiXBl/yptXv5pA2dGSB3gR6UjrLWDB0Q1jMD1Ds1KGNTHTV/J0HWjQBlj5NnDJrtkp1suyfcC+fKtCFyFH96U8VePE703NBDG8wXF2RfQFDfJCbHFSzgd/gH8OJqeuoOt+hK1TON3gYmEDB0= zfangbiao@gmail.com"

ENV DEFAULT_LIST_FILE=crontab_list.sh \
    CUSTOM_LIST_MERGE_TYPE=append \
    COOKIES_LIST=/scripts/logs/cookies.list \
    REPO_URL=git@gitee.com:zhangfangbiao/scripts.git \
    REPO_BRANCH=master

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache bash tzdata git moreutils curl jq openssh-client \
    && rm -rf /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && mkdir -p /root/.ssh \
    && echo -e $KEY > /root/.ssh/id_rsa \
    && chmod 600 /root/.ssh/id_rsa \
    && ssh-keyscan gitee.com > /root/.ssh/known_hosts \
    && git clone -b $REPO_BRANCH $REPO_URL /scripts \
    && cd /scripts \
    && mkdir logs \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install \
    && cp /scripts/docker/docker_entrypoint.sh /usr/local/bin \
    && chmod +x /usr/local/bin/docker_entrypoint.sh

WORKDIR /scripts

ENTRYPOINT ["docker_entrypoint.sh"]

CMD [ "crond" ]