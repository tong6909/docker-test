ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
CMD ["/bin/sh"]
/bin/sh -c set -ex     && apk add --no-cache ca-certificates apache2-utils
COPY file:51a441e6eceff49ef32609e7070b64e8d5690648e4f915cc825274e6fe37aed2 in /bin/registry 
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
VOLUME [/var/lib/registry]
EXPOSE 5000
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
