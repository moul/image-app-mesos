Official Mesos image on Online Labs
====================================

[![GuardRails badge](https://badges.production.guardrails.io/moul/image-app-mesos.svg)](https://www.guardrails.io)

**Warning: Still in development**

Scripts to build the official Mesos image on Online Labs

This image is built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the official [Ubuntu](https://github.com/online-labs/image-ubuntu) image.

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/online-labs/image-tools#docker-based-builder)

---

Install
-------

Build and write the image to /dev/nbd1 (see [documentation](https://doc.cloud.online.net/howto/create_image.html))

    $ make install

Full list of commands available at: [online-labs/image-tools](https://github.com/online-labs/image-tools/tree/master#commands)

---

Links
-----

- [Community: Mesos on C1 servers](https://community.cloud.online.net/t/mesos-on-c1-servers/414)
