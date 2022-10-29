# Updated ubuntu-base images

Ubuntu (base) images with:
- `ca-certificates` and `tzdata` installed and timezone set to `Europe/Amsterdam`
- upgraded packages (`apt-get upgrade`)
- weekly built images

Available tags:
- [Ubuntu 20.04 (base) image](https://hub.docker.com/_/ubuntu?tab=tags&page=1&name=20.04)
- [Ubuntu 22.04 (base) image](https://hub.docker.com/_/ubuntu?tab=tags&page=1&name=22.04)
- [Ubuntu 22.10 (base) image](https://hub.docker.com/_/ubuntu?tab=tags&page=1&name=22.10)

Use it like this:

```sh
$ docker run -it --rm ubuntubase/ubuntubase:22.04 date
Mon Sep 28 10:30:02 CEST 2020
```

It shows the current date and time for the `Europe/Amsterdam` timezone.
