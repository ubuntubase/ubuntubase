# Ubuntu-base

[Ubuntu 20.04 (base) image](https://hub.docker.com/_/ubuntu?tab=tags&page=1&name=20.04) with `ca-certificates` and `tzdata` installed and timezone set to `Europe/Amsterdam`.

Use it like this:

```sh
$ docker run -it --rm ubuntubase/ubuntubase:20.04 date
Mon Sep 28 10:30:02 CEST 2020
```

It shows the current date and time for the `Europe/Amsterdam` timezone.
