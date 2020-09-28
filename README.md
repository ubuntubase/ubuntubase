# Ubuntu-base

Ubuntu 20.04 (base) image with `ca-certificates` and `tzdata` installed and time set to Western Europe timezone.

Use it like this:

```
$ docker run -it --rm ubuntubase/ubuntubase:20.04 date
Mon Sep 28 10:30:02 CEST 2020
```

It shows the current date and time for the `Europe/Amsterdam` timezone.
