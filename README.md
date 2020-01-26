# Blue-green docker-compose deployment

## Quickstart
- `./init.sh` - Run hello-world application with version 1.0.0 in green container. 
- Open in browser `localhost:9093` to check version 1.0.0
- `./deploy.sh 1.0.1` - Deploy hello-world 1.0.1 to blue container
- `./swap.sh` - Swap green and blue containers
- Open in browser `localhost:9093` to check version 1.0.1
