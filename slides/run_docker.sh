#! /bin/bash

docker run --rm -ti \
-e ROOT=true \
-e PASSWORD=quarto \
-v /home/jposada/oop/slides:/home/rstudio \
--net host jdposa/quarto_python:0.1