# Bats
![build_workflow](https://github.com/tomclement/bats/actions/workflows/build.yml/badge.svg)
![release_workflow](https://github.com/tomclement/bats/actions/workflows/release.yml/badge.svg)

Docker image to run [bats](https://github.com/bats-core/bats-core) with the following helper libraries included:
- bats-support - https://github.com/ztombol/bats-support
- bats-assert - https://github.com/ztombol/bats-assert
- bats-mock - https://github.com/lox/bats-mock

## Usage
```shell
docker run -it -v ${PWD}:/code ghcr.io/tomclement/bats/bats-runner:latest /code/<path-to-tests>
```
