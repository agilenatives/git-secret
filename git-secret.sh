#!/bin/bash

docker run -it -v $(pwd):$(pwd) -w $(pwd) agilenatives/git-secret /bin/bash
