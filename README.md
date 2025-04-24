# Updated ubuntu-base images

Ubuntu (base) images with:

- `ca-certificates` and `tzdata` installed
- the timezone set to `Europe/Amsterdam`
- all packages upgraded to their latest versions (`apt-get upgrade`)

Available tags:

- `22.04` --> [Ubuntu 22.04 (base) image](https://hub.docker.com/r/ubuntubase/ubuntubase?tab=tags&page=1&name=22.04)
- `24.04` --> [Ubuntu 24.04 (base) image](https://hub.docker.com/r/ubuntubase/ubuntubase/tags?page=1&name=24.04)

Use it like this:

```sh
$ docker run -it --rm ubuntubase/ubuntubase:24.04 date
Sat Oct 29 22:15:08 CEST 2022
```

You can override the timezone by overriding the TZ variable during container startup, like this:

```sh
$ docker run -it --rm -e 'TZ=Europe/London' ubuntubase/ubuntubase:24.04 date
Sat Oct 29 21:15:08 BST 2022
```
