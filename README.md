[![CI](https://github.com/tkgregory/jenkins-for-kaniko/actions/workflows/gradle.yml/badge.svg)](https://github.com/tkgregory/jenkins-for-kaniko/actions/workflows/gradle.yml)

This project creates a Docker image for Jenkins, with a single job demonstrating using Kaniko to build Docker images.

The Dockerfile adds these additional packages:

* AWS CLI
* jq

It also installs the following plugins:

* Git
* Pipeline a.k.a. `workflow-aggregator`

## Building

`./gradlew docker`

## Running

Replace environment values in *[build.gradle](build.gradle)* then run:

`./gradlew dockerRun`

Jenkins will be available at [http://localhost:8080](http://localhost:8080)
