# Vault Docker Setup

This repository contains a Docker setup for running a Vault server.

## Components

- `Dockerfile`: This file contains the instructions to build a Docker image for the Vault server. The image is based on Alpine Linux 3.14 and includes Vault version 1.8.2.

- `docker-compose.yml`: This file is used to define services, networks, and volumes for docker-compose.

- `vault-config.json`: This is the configuration file for the Vault server.

## How to Run

1. Build the Docker image by running the following command:

    ```bash
    docker build -t mteke/vault-filesystem:0.1 .
    ```

2. Run the Docker container using docker-compose:

    ```bash
    docker-compose up
    ```

The Vault server will be accessible at `http://127.0.0.1:8200`.

## Vault Configuration

The Vault server uses file storage backend. The data is stored in `vault/data` directory.

The server listens on all network interfaces (0.0.0.0) on port 8200. TLS is disabled for simplicity.

The UI is enabled and `mlock` is disabled to avoid locking memory.

## Environment Variables

- `VAULT_ADDR`: The address of the Vault server.
- `VAULT_API_ADDR`: The address of the Vault server for API requests.

## Ports

The Vault server is exposed on port 8200.

## Note

This setup is intended for development purposes only. For production environments, consider using a secure storage backend and enable TLS.