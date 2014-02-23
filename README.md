Build [XSP](https://github.com/mono/xsp) server and related components for use with the [Heroku .NET buildpack](https://github.com/friism/heroku-buildpack-mono).

The Dockerfile relies on [mono-builder](https://github.com/friism/mono-builder).

To build:

```term
$ docker build -t my-user/xsp-builder .

```

To build and upload new XSP version:

```term
$ docker run -v ${PWD}/cache:/var/cache -e AWS_ACCESS_KEY_ID=key -e AWS_SECRET_ACCESS_KEY=secret -e VERSION=master my-user/xsp-builder
```
