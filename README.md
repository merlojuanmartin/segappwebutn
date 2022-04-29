# TP Seguridad Apps Web - UTN

# Pruebas con wordpress 4.7 en docker
```
Expone wp-admin en la pagina. No hay límite de bloqueo para 
ingreo erróneo de password. Al probar un usuario válido con 
un pass erroneo manda otro mensaje de error. Por lo que al 
probar con uno conocido, como admin, encontramos este 
mensaje que llama la antención. Fuerza bruta para hallar el 
password. Poner usuario y pass cortos para el lab. Usamos 
burp para interceptar.
```

## Opciones
Robamos mails de usuarios y hacemos fishing

# Orden vulnerabilidades
1. A04:2021 – Insecure Design
https://owasp.org/Top10/A04_2021-Insecure_Design/
Expone en página principal el panel de wp-admin para autenticarse

2. A07:2021 – Identification and Authentication Failures
https://owasp.org/Top10/A07_2021-Identification_and_Authentication_Failures/
Permite fuerza bruta, usuario admin (weak o default)

3. A05:2021 – Security Misconfiguration 
https://owasp.org/Top10/A05_2021-Security_Misconfiguration/
Permitir modificar los archivos de los theme desde la web, podemos levantar un reverse shell.
En ruta: http://localhost:8000/wp-content/themes/twentyfifteen/404.php
https://www.revshells.com/
https://www.wpbeginner.com/wp-tutorials/how-to-disable-theme-and-plugin-editors-from-wordpress-admin-panel/

