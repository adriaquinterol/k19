## Pràctica docker-swarm local + AWS:

1. Modifiquem el "install.sh" del docker "hello" de manera que ens mostri el hostname de la màquina:

    install.sh:
        - echo "hola bon dia $(hostname)" > /var/www/html/index.html

2. Creem el security-groups a aws. Nom: "swarm-hello-visualizer".