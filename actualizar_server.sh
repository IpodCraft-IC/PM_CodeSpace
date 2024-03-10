#!/bin/bash

# Entra al directorio del servidor.
cd PocketMine-MP_Server/

# Borra los archivos que necesitan actualización para descargarlos en la fase de Descarga.
rm -r bin/
rm -r PocketMine-MP.phar
rm -r start.sh

# Descarga e Instala PocketMine-MP y los archivos necesarios para funcionar.
# Esto lo descarga desde la página oficial de PocketMine-MP.
# Si no te funciona el "wget" usa "curl"
wget -q -O - https://get.pmmp.io | bash -s -
#curl -sL https://get.pmmp.io | bash -s -

# Borra los archivos basura que no son necesarios.
rm -r CONTRIBUTING.md
rm -r README.md
rm -r LICENSE

# Se le da permisos de ejecución para poder iniciar el server.
chmod +x start.sh

echo -e "Actualización Finalizada!"