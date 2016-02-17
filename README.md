# sti-perl-swn
This Dockerfile modifies the base [openshift/sti-perl](https://github.com/openshift/sti-perl) image with requirements that are specific to the [SWN Sector Generator](https://github.com/nhr/swn).

The derivative image can be built by cloning this repo and then running:

```
docker build .
```

Then tag the resulting builder image with a useful image name:

```
docker tag <image_id> docker.io/<username>/perl-520-centos7-swn
```

And then finally you can use [Source-to-Image]() to package Perl applications with this custom builder like so:

````
s2i build . docker.io/<username>/perl-520-centos7-swn docker.io/<username>/<application_tag>
```
