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
