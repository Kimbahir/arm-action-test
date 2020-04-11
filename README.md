# arm-action-test

![Python application](https://github.com/Kimbahir/arm-action-test/workflows/Python%20application/badge.svg) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Simple test of pytest and automatic build and deployment of app to a Raspberry Pi Kubernetes cluster.

## Workflow

The workflow is as follows:

- It is a very simple flask application that is tested with pytest.
- When submitting to master branch, github actions take over, and tests + builds.
- I use crazy-max/ghaction-docker-buildx@v1 to build and push to docker hub
  - Please note that it is necessary when you want to build an ARM container, but overhead if you are using x64
- With the container updated, it is time to get it to my kubernetes cluster, which is done via [keel.sh](https://keel.sh/docs/)
  - Currently I have had some problems with the latest ARM build from keel.sh, so I used [reireias' build](https://hub.docker.com/r/reireias/keel-arm/tags)

I am very happy with the result, as this is the first time I have managed to do a functional CI/CD pipeline
(however crude it might be)
