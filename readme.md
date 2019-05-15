# h2-migrate

h2-migrate is a docker image that provides the infrastructure for migrating a Mercurial project to git using the [fast-export](https://github.com/frej/fast-export) tool

## Installation

Clone the repository

Using [docker](https://www.docker.com/) build the image

```bash
docker build -t h2-migrate .
```

## Usage

### Migrate repository

We need to specify the following paths and pass them to h2-migrate: -
* MERCURIAL_REPO: local path to the mercurial repository
* TARGET_DIR: local output directory for git repository


Either using docker

```bash
docker run -v [MERCURIAL_REPO]:/mercurial -v [TARGET_DIR]:/git h2-migrate
```

Or using docker-compose (edit in the docker-compose.yml)

```bash
docker-compose run h2-migrate
```

## License
This project is licensed under the [MIT](https://choosealicense.com/licenses/mit/) license


## Acknowledgments

* Fast export team for the [fast-export](https://github.com/frej/fast-export) tool