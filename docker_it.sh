#!/bin/bash
docker run -ti --rm -v $(pwd):/work ubuntu:22.04 /bin/sh -c "apk add bash >/dev/null 2>/dev/null; /bin/bash /work/runme.sh"


