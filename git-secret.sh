#!/bin/bash

docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) agilenatives/git-secret /bin/bash
