#!/bin/bash

docker run --rm -it -v $(pwd):/home -w /home agilenatives/git-secret /bin/bash
