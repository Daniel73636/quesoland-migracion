# QuesoLand — kit de migracion

Inventario, scripts y lista blanca para migrar QuesoLand (Better MC Fabric 1.20.1).

## Restore completo

El zip de ensayo (~3.1 GB) vive en el host actual:

`/opt/quesoland/migracion/quesoland-ensayo-2026-10-08.zip`

SHA-256: ver `quesoland-ensayo-2026-10-08.zip.sha256`

**No se subio el zip completo a este repo** porque supera el limite practico de GitHub (~2 GB por release / 100 MB por archivo en git) y contiene datos de jugadores. Copia el zip por ZeroTier/SCP/USB al host nuevo.

## Contenido de este repo

- `docs/inventario-2026-10-08.md` — inventario
- `whitelist-nombres.txt` / `whitelist.json` — lista blanca (restaurar con mayusculas exactas; `online-mode=false`)
- `docker-compose.yml` — plantilla (contrasenas en CHANGE_ME)
- `server.properties.sample` — sin secreto RCON
- `quesoland-playtime-1.0.0.jar` + `quesoland-playtime.json` — limite de horas
- `scripts/` — reinicio diario, watchdog Playit, watchdog de red

## Checklist host nuevo

1. Docker + compose
2. Restaurar `data/` desde el zip (excluye logs ya)
3. Restaurar whitelist exacta
4. Playit nuevo (no publicar `playit.toml`)
5. ZeroTier/Tailscale opcionales
6. Cron/scripts o equivalentes del proveedor
7. Java 17, Fabric 0.18.4, MC 1.20.1
8. Puertos 25565 TCP y 24454 UDP

## Aviso

Repo publico: no incluye RCON, Playit secret, ni el mundo completo.
