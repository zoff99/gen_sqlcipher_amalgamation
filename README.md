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
