#! /bin/bash

docker run --rm -ti \
-e ROOT=true \
-e PASSWORD=quarto \
-v /home/jose/Documents/github_repos/oop/slides:/home/rstudio \
-p 8787:8787 jdposa/quarto_python:0.1