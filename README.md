## sqlcipher amalgamation

this tool will create sqlcipher amalgamation source to be used as a replacement for sqlite amalgamation

### how to generate the amalgamation locally

```bash
# you need to have docker.io installed
git clone https://github.com/zoff99/gen_sqlcipher_amalgamation
cd gen_sqlcipher_amalgamation/
./docker_it.sh
# find the generated code in the ./gen/ directory
ls -al ./gen/
```

<br>
Any use of this project's code by GitHub Copilot, past or present, is done
without our permission.  We do not consent to GitHub's use of this project's
code in Copilot.
<br>
No part of this work may be used or reproduced in any manner for the purpose of training artificial intelligence technologies or systems.
