## Apunts de les imatges de kerberos:

### Iniciar servidor de kerberos a AWS:

1. Engegar la imatge de kserver publicant els ports necesarirs:

	````
	docker run --rm --name kserver.edt.org -h kserver.edt.org -p 88:88 -p 749:749 -p 754:754 -d adriaquintero61/k19:kserver
	```
2. Assegurar-se de que a amazon els ports estan oberts per a la instancia (security-group:kerberos)

3. Engegar la imatge del client:

	```
	docker run --rm --name khost.edt.org -h khost.edt.org -it adriaquintero61/k19:khostp /bin/bash
	```
4. Modificar el fitxer /etc/hosts de manera que hi hagi una linia que inidiqui la ip publica de la instancia d'amazon amb el nom 'kserver.edt.org'

5. Comprovar que kerberos funciona amb 'kinit' i el login d'usuaris amb 'su -' i 'kadmin'	
