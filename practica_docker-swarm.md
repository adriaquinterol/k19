## Pràctica docker-swarm local + AWS:

1. Modifiquem el "install.sh" del docker "hello" de manera que ens mostri el hostname de la màquina:

    install.sh:
        - echo "hola bon dia $(hostname)" > /var/www/html/index.html

2. Creem el security-groups a aws. Nom: "swarm-hello-visualizer".

3. Ordres:

    - docker node ls: llista els diferents nodes.
    - docker stack deploy -c docker-compose.yml app: desplega el contingut del fitxer "docker-compose.yml" amb el nom "app".
    - docker stack ps app: llista informació dels procesos que pertanyen a "app", incloent-hi el host on s'executa.
    - docker stack services app: mostra quines imatges estan desplegades sota el nom de "app" i quantes "còpies" n'hi han, tot indicant els ports publicats.
    - docker service ls: idem que l'anterior però mostra tots els serveis actius.
    - docker service ps app_hello: mostra informació del servei "app_hello" (imatge hello dins node app) 
    - docker service inspect app_hello: idem que l'anterior però amb informació més detallada.
    - docker service logs app_hello: mostra els logs del node "app" de la imatge "hello".  
    - docker service scale app_hello=4: les imatges "hello" del node "app" pasen a ser 4 (tan per augmentar com per disminuir).
    - docker node rm i02: elimina el host "i02" del node.
    - docker node update --label-add lloc=local asus: afegeix la etiqueta "lloc:local" al node "asus".
    - docker node inspect i01: mostra informació detallada del node i01.
    
    **El fet d'afegir etiquetes als nodes permet que a l'hora de desplegar-los se'ls hi puguin assignar diferents "constraints" o condicions: com per exemple que només es desplegui en els nodes amb l'etiqueta lloc==local**