FROM bats/bats:latest

COPY ./bats-helpers /opt/bats-test-helpers

WORKDIR /code/
