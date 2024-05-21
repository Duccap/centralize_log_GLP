how containers should be configured before deploying:
    docker cli: 
        $docker run --log-opt tag="{{.ImageName}}|{{.Name}}|{{.ImageFullID}}|{{.FullID}}"
    docker-compose:
        logging:
            driver: "json-file"
            options: 
                tag: "{{.ImageName}}|{{.Name}}|{{.ImageFullID}}|{{.FullID}}"