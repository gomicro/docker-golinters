# Docker-Golinters
Docker image for linting a Go repository and breaking the build if linting is not correct.

## Usage

This is to be used from inside the root directory of a go project that is properly placed inside your gopath.

```
docker run -v $PWD:/go${PWD#"$GOPATH"} --workdir /go${PWD#"$GOPATH"} gomicro/golinter
```

## Versioning

The project will be versioned in accordance with [Semver 2.0.0](https://semver.org). See the [releases](https://github.com/gomicro/docker-golinters/releases) section for the latest version. Until version 1.0.0 the project is considered to be unstable.

It is always highly recommended to vendor the version you are using.

## License
See [LICENSE.md](./LICENSE.md) for more information.
