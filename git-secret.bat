@echo off

docker run --rm -it -v %cd%:/home -w /home agilenatives/git-secret /bin/bash
