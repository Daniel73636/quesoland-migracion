#!/bin/sh
# Reinicio diario para soltar chunks que se quedan cargados.
# Guarda el mundo. No borra datos.
if docker ps --format "{{.Names}}" | grep -qx quesoland; then
  docker exec quesoland rcon-cli "say Reinicio de mantenimiento en 30 segundos. El mundo se guarda y no se borra nada."
  sleep 30
  docker exec quesoland rcon-cli "save-all flush"
  sleep 10
  docker restart quesoland
fi
