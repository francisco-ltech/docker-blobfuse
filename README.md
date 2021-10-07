# Intro

This docker-blobfuse repository is the containarisation of [Blobfuse](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-how-to-mount-container-linux) virtual file system for Azure Blob Storage. It allows users to mount their Azure blob instance into their Linux file system and access files locally whilst hosted remote. 

This could also be useful for Software or Data Engineers building applications that read/write to Azure blob storage. For example, if you are an ETL developer loading data from the blob, you could extend this docker-compose to include the image for Spark or Python and properly separate your compute from storage.

The flexibility of the container is that you can still mount your Azure blob storage regardless of which operating system you are using.

## Pre-requisites
- Docker engine installed on your machine

## Prepare your fuse_connection.cfg file

- accountName my_strg_acc_name
- accountKey my_strg_acc_key
- containerName my_strg_acc_container

## Off you go

```
$ docker-compose up -d
```

### In case you need to force a rebuild

```
$ docker-compose up --build -d
```

## What do you get?

- A docker image
- A docker container
- A mount location at /mnt/adls
