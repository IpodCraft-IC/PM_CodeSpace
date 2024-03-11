#!/bin/bash

# Se entra al directorio del servidor.
cd PocketMine-MP_Server/

# Se eliminan los archivos que se van a reemplazar en la actualización.
rm -r bin/
rm -r PocketMine-MP.phar
rm -r start.sh

# Descarga e instala todos los archivos necesarios para la actualización.
#wget -q -O - https://get.pmmp.io | bash -s -
curl -sL https://get.pmmp.io | bash -s -

# Elimina todos los archivos basura de la actualización.
rm -r CONTRIBUTING.md
rm -r LICENSE
rm -r README.md

# Aviso de actualización terminada.
echo - "Actualización Finalizada!"