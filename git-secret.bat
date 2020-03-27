@echo off
docker run --rm -it -v %cd%:%cd% -w %cd% agilenatives/git-secret /bin/bash
