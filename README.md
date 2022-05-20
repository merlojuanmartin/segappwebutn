# TP Seguridad Apps Web - UTN

# Pasos a seguir para realizar las pruebas
## Para levantar los docker
```
# Descomprimir base de datos
tar -xvf db_data.tar.gz

# Levantar docker
sudo docker-compose up -d
```
## Ingresar a la página
http://localhost:8000

## Hacer ataque de scaneo del sitio
```
dirb http://localhost:8000
```
## Verificamos el Output (MODIFICAR)
```
-----------------
DIRB v2.22    
By The Dark Raver
-----------------

START_TIME: Tue May 10 13:38:20 2022
URL_BASE: http://secappweb.utn.edu.ar/
WORDLIST_FILES: /usr/share/dirb/wordlists/common.txt

-----------------

GENERATED WORDS: 4612                                                          

---- Scanning URL: http://secappweb.utn.edu.ar/ ----
+ http://secappweb.utn.edu.ar/index.php (CODE:301|SIZE:0)                      
+ http://secappweb.utn.edu.ar/server-status (CODE:403|SIZE:308)                
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/                           
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-content/                         
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-includes/                        
+ http://secappweb.utn.edu.ar/xmlrpc.php (CODE:405|SIZE:42)   
  
---- Entering directory: http://secappweb.utn.edu.ar/wp-admin/ ----
+ http://secappweb.utn.edu.ar/wp-admin/admin.php (CODE:302|SIZE:0)             
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/css/                       
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/images/                    
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/includes/                  
+ http://secappweb.utn.edu.ar/wp-admin/index.php (CODE:302|SIZE:0)             
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/js/                        
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/maint/                     
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/network/                   
==> DIRECTORY: http://secappweb.utn.edu.ar/wp-admin/user/     

------------------
- OUTPUT OMITTED -
------------------
```
Con esta información encontramos que existe un /wp-admin/admin.php y dió como respuesta
con código 302 Found, por lo que chequeamos la página desde el sitio
http://secappweb.utn.edu.ar/wp-admin/index.php

## Chequeamos usuario y password y nos damos cuenta que no hay un bloqueo
por cantidad de intentos.

## Hacemos fuerza bruta (DESARROLLAR)

## Ingreso de inyección (DESARROLLAR)

## Reverse shell (DESARROLLAR)

## Configuración mysql con md5 (DESARROLLAR)

## Ingreso a base de datos remota (DESARROLLAR)




