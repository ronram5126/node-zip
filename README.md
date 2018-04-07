# node-zip
The [official node image](https://hub.docker.com/_/node/) for Bitbucket Pipelines *plus* zip cmd to produce zipped artifact.

[![Automated Docker Build](https://img.shields.io/docker/automated/ronitbk/node-zip.svg)](https://hub.docker.com/r/ronitbk/node-zip/)

## Usage

Simply use this image in your 'bitbucket-pipelines.yml' file:

    image: ronit/node-zip
    pipelines:
      default:
        - step:
            script:
              - yarn test
              - yarn run build
              - cd build
              - zip -r ../build.zip *
              - cd ..
             artifact:
              - build.zip


