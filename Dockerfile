FROM node:lts-alpine3.12

LABEL AUTHOR="none" \
      VERSION=0.1.4
ARG KEY="-----BEGIN OPENSSH PRIVATE KEY-----\n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\n2gZGXDSq3W80MAAAADemZi\n-----END OPENSSH PRIVATE KEY-----"
# ARG KEY="-----BEGIN OPENSSH PRIVATE KEY-----\nb3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABlwAAAAdzc2gtcn\nNhAAAAAwEAAQAAAYEAw0HPPU5P2mic7P5Y2pR5/OkD4khJuwGnBTbTju+iON8Kq3CanBS8\nWQeNy+OwfzVh5YnmBoGGNRIR9Ct9INewh69Rm/MH16bIxGUQ68x2ZLxuNHlk6yaeZJ3vqx\n5Ksoa8PUVv7mBFGdg/SpCOjFxd/1WfRhzbySPu4k5NB5iv1/PtTei2eVepBIoLn8RaAdiC\naS+DmXcKcLqd2vQlRU+Efu7AkUd0cgzou51HXwfep4XqtzEBSq17/g6Mo53yxXb3Vd7ssS\nQn16cpSLZm7b/WPAp1/QXo5LY7SOviGJMSc2FEfLAqRoNfSOSKCxUoRbxkwqxReATlxb0Y\niBf7DPfgng9m3Ao+6FwngVvuGY+HBHucr3gXY4lwZf8qbV7+aQNnRkgd4EelI6y1gwdENY\nzA9Q7NShjUx01fydB1o0AZY+TZwya7ZKdbLsn3AvnyrQhchR/elPFXjxO9NzQQxvMFxdkX\n0BQ3yQmxxUs4Hf4B/DianrqDrfoStUzjd4GJhAwdAAAFkFOMH6dTjB+nAAAAB3NzaC1yc2\nEAAAGBAMNBzz1OT9ponOz+WNqUefzpA+JISbsBpwU2047vojjfCqtwmpwUvFkHjcvjsH81\nYeWJ5gaBhjUSEfQrfSDXsIevUZvzB9emyMRlEOvMdmS8bjR5ZOsmnmSd76seSrKGvD1Fb+\n5gRRnYP0qQjoxcXf9Vn0Yc28kj7uJOTQeYr9fz7U3otnlXqQSKC5/EWgHYgmkvg5l3CnC6\nndr0JUVPhH7uwJFHdHIM6LudR18H3qeF6rcxAUqte/4OjKOd8sV291Xe7LEkJ9enKUi2Zu\n2/1jwKdf0F6OS2O0jr4hiTEnNhRHywKkaDX0jkigsVKEW8ZMKsUXgE5cW9GIgX+wz34J4P\nZtwKPuhcJ4Fb7hmPhwR7nK94F2OJcGX/Km1e/mkDZ0ZIHeBHpSOstYMHRDWMwPUOzUoY1M\ndNX8nQdaNAGWPk2cMmu2SnWy7J9wL58q0IXIUf3pTxV48TvTc0EMbzBcXZF9AUN8kJscVL\nOB3+Afw4mp66g636ErVM43eBiYQMHQAAAAMBAAEAAAGBAJUSQlmI13hlVCGwEkBXCUdo0z\nlIfVoT6eMWN7CyDYUj7C51muS9BAtos/5NCGwmYmZvwLmI2+DaufBT34VahwEgfcr1YjBn\nunIOwztzb5R7NBxF7iGF63ngBqH7T4Y7Ta3tvIYe48LWkYOpF9vbjTwqr55E3BwVngUTSM\nYa8W2LYsqPd/juTzES/8rrithL50zNJMje1I66O1h1+5qOGhcaytRf3GxSpMDQVDQeewQl\nPsy70kOkbbzKeN9V8IqHxvpUX3oowLEPrsZAYF2XENbexbo6zFWyTV3f0XQiCbrJCNT0h2\nbTCtx8cvu8s4wsq7S6lFj9Vq9BjUB1qiDWo9gwookar5BqYxsSlr5ul52tX+33xt2gVTA4\nhCjom7Gu3mN/SLoA/zycTp3RKCLJCHELjBvm5HF0lbl/fzCcxg9yQpjiwnAeqbLwnpf48W\nMMySm6AmujzxzT+d4gKUid9r+7KvrBcJA2maHWSus+uDnEbGHYGnEvlfn4CeNZnooYNQAA\nAMADP0hLhqrb+EG6KBGbi7BkiXlErlScCFPBNGXgfNTj1ZjR4bPY66w9IHVi+3cSeb3mbd\nLyUmVC+E7O9N4rmco+2ZNPmfDHeW0EVZ0B9dpByjRaUC0atqdzHjY8roZTHTE/VS1CGMcn\nzOErdnnoanaGWAsd9Wq9lqEq17L+kpoPRM019BJ93Vn/5JbHWg5ZTp3pfVySW0VF1Pv/nv\nEc8oSvRMw/rneZli7mOOny0LoeW8LkG3q4ExT+JndQY7b/ScoAAADBAOIvX59v0veD2R7W\nKMRtPl5Dg8Ud4lQnjFswkqXvzaRFSQp/uGbGWB+SMJmtb9NqVQOFyfxkqrK8ZLSBueqcOz\n3PWbSMys00BcqZcbMqQwBo1IdJczRAJCwlcdwQM5YwfsTGNXnpVNXzyMEPx5whBWuBWmSI\noduYC3RNj085wFX11QLqNTWnUY2IW1FH+GD8jZWCD+Zr1qb/GlQ7NmZfkEYMtdRkUcFRae\nQ/XWsQKlUz41I56B9DeVsQFCZMMD4Y0wAAAMEA3P7FARXKM3o0w/di5xAT3PClpBSBQP0Z\ntReMJjTJGZxVq0VyJgFIWNTGVGQ9aFZZhK25nvOFyUdwf99dc3Wjl1oA1dNlTcN1WDMat5\ntUpJSg2yKzUnc+gDvChFGBiiHMRDmDs8Fyu+bStElewBru1DoKSL1r0ZLReeCwvQDvthvT\n8ySZHr1Z5KiJnWKqkWSnY3oS0vBhtWBe/cBTItcM1D7K3sBpqCt+OoMroLDeHKl6sYingL\nmPhBG9lOvtvjFPAAAAE3pmYW5nYmlhb0BnbWFpbC5jb20BAgMEBQYH\n-----END OPENSSH PRIVATE KEY-----"

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