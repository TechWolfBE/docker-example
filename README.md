# Docker example

How to get going:
1. Open a terminal in the root of the project
2. Copy paste commands as desired

## Build image
Normal version:  
```sh
docker build -t example .
```

Extended version:  
```sh
docker build -f Dockerfile.extended -t example2 .
```

### Explore image layers:
```sh
dive example
# OR
dive example2
```


## Run image
```sh
docker run --rm example
# OR
docker run --rm example2
```
This will use the defined CMD to be executed.

### Run shell on image
```sh
docker run --rm -it example /bin/bash
# OR
docker run --rm -it example2 /bin/bash
```
This overwrites/replaces the default CMD with `/bin/bash` and gives an interactive shell (`--interactive --tty` or in short `-it`).

**Note**: To exit the shell: type `exit` or _CTRL + D_.


### Change environment variables
Relevant option: `-e <VAR_NAME>="<some-value>"`

**Example:**
```sh
docker run --rm -e HELLO_WORLD="bye" example
```

### With volume mount
Relevant option: `-v <local-src-dir>:<container-dir>`

**Examples**:
```sh
docker run --rm -it -v ./:/home/ugr/test example /bin/bash
# OR
docker run --rm -it -v ./:/home/ugr/test example2 /bin/bash
```

### Change/Remove networking
Relevant option:`--net <network-name>`

**Example**:
```sh
docker run --rm -it --net none example /bin/bash
```

### Change user
Relevant option: `-u <user>`

**Example:**
```sh
docker run --rm -u root -it example2 /bin/bash
```

### Change working directory
Relevant option: `-w <container-dir>`

**Examples:**
```sh
docker run --rm -w /root -it example /bin/bash
# OR
docker run --rm -w /root -it example2 /bin/bash
```

### Interesting commands to explore the shell
```sh
# Get all environment variables
env

# Echo the environment variable HELLO_WORLD (as set in the Dockerfile)
echo $HELLO_WORLD

# List files and directory in current directory (with permissions and owner)
ls -al

# List files and directory in current directory (with permissions and owner and group as id)
ls -aln

# Print current directory
pwd

# Change directory to `<path-to-directory>` (e.g. `/home`, `/`, `test`)
cd <path-to-directory>

# Print current user
whoami

# Get current user id mapping and groups
id
```