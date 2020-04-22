# GraphQL Mesh Docker

Simple docker image to run GraphQL Mesh

## TL;DR

```sh
# Run on Docker
docker-compose up -d
# or run on Kubernetes
kubectl apply -f k8s
```

## What is included

Resources for docker image building
- [Docker image](./Dockerfile)
- [docker-compose file](./docker-compose.yaml)

Test configuration for GraphQL Mesh for `docker-compse up`
- [./work](./work)

## Build

We can utilize `docker-compose` command to build with Dockerfile

```sh
docker-compose build
```

## Run

### 1. On Docker 

Simply run this command.

```sh
docker-compose up -d
```

After running docker image, we can access to GraphQL Mesh service at `http://localhost:4000`

### 2. On Kubernetes

```sh
kubectl apply -f k8s
```

## Customize

> [GraphQL Mesh .meshrc]()

- Please follow the guidance of the official document above and create your `.meshrc.yaml`.
- Place `.meshrc.yaml` in the directory.

  #### On Docker
  - Edit `docker-compose.yaml` file in order to point your `.meshrc.yaml`

  ```yaml
      volumes:
        - ./.meshrc.yaml:/work/.meshrc.yaml # <- comment out and ponit your .meshrc.yaml
  ```
  - Run `docker-compose up -d`

  #### On Kubernetes
  - **Overwrite** new ConfigMap resource file with this command.

  ```sh
  kubectl create cm meshrc-cm --from-file .meshrc.yaml --dry-run -o yaml> k8s/meshrc-cm.yaml
  ```
  - Run `kubectl apply -f k8s`
