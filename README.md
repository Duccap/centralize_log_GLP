# Centralize_log_GLP
A project to gather logs and visualize them to clients, currently it focuses on working with docker containers.

## Requirements
Before deploying the service, configure the containers:

On docker cli:
```bash
docker run --log-opt tag="{{.ImageName}}|{{.Name}}|{{.ImageFullID}}|{{.FullID}}" ...
```

On docker-compose:
```yaml
logging:
      driver: "json-file"
      options: 
        tag: "{{.ImageName}}|{{.Name}}|{{.ImageFullID}}|{{.FullID}}"
```