# Updated ubuntu-base images

Ubuntu (base) images with:

- `ca-certificates` and `tzdata` installed
- the timezone set to `Europe/Amsterdam`
- all packages upgraded tot there latest versions (`apt-get upgrade`)

Available tags:

- `20.04` --> [Ubuntu 20.04 (base) image](https://hub.docker.com/_/ubuntu?tab=tags&page=1&name=20.04)
- `22.04` --> [Ubuntu 22.04 (base) image](https://hub.docker.com/_/ubuntu?tab=tags&page=1&name=22.04)
- `22.10` --> [Ubuntu 22.10 (base) image](https://hub.docker.com/_/ubuntu?tab=tags&page=1&name=22.10)

Use it like this:

```sh
$ docker run -it --rm ubuntubase/ubuntubase:22.04 date
Sat Oct 29 22:15:08 CEST 2022
```

You can override the timezone by overriding the TZ variable during container startup, like this:

```sh
$ docker run -it --rm -e 'TZ=Europe/London' ubuntubase/ubuntubase:22.04 date
Sat Oct 29 21:15:08 BST 2022
```
