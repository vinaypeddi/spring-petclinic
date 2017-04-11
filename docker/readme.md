# Docker Image for Petclinic #

This is the workspace for creating a Docker Image from the petclinic WAR.

## How to run (Windows)

1. Open Docker Quickstart Terminal
1. Build the Petclinic WAR e.g `mvnw install`.
1. CD to this directory
1. Execute `./build.sh` to build the image.
1. Execute `./run.sh` to run a container off the image.

The output of `./run.sh` will tell you what IP and Port to enter into a browser, in order to load the Petclinic Application UI.
