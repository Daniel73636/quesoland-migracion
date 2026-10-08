#!/bin/sh
# Reinicia Playit si Minecraft responde en local y el tunel publico no.
set -u

TUNNEL_HOST="stamina-exceptions.tun.ply.gg"
TUNNEL_PORT=25565
LOCAL_HOST="127.0.0.1"
LOCAL_PORT=25565
LOG=/var/log/playit-watchdog.log
FAILS=/run/playit-watchdog.fails
LAST=/run/playit-watchdog.lastrestart
COOLDOWN=1200
STRIKES=2

log() {
  echo "$(date "+%Y-%m-%dT%H:%M:%S%z") $*" >> "$LOG"
}

mc_pong() {
  host="$1"
  port="$2"
  hlen=$(printf %s "$host" | wc -c | tr -d " ")
  plen=$((hlen + 7))
  if [ "$plen" -gt 127 ] || [ "$hlen" -gt 127 ]; then
    return 2
  fi
  hi=$((port / 256))
  lo=$((port % 256))
  {
    printf "\\$(printf %03o "$plen")"
    printf "\\000\\373\\005"
    printf "\\$(printf %03o "$hlen")"
    printf %s "$host"
    printf "\\$(printf %03o "$hi")\\$(printf %03o "$lo")"
    printf "\\001"
    printf "\\001\\000"
  } | timeout 8 nc -w 6 "$host" "$port" | head -c 500 | grep -q "\"version\""
}

if [ -f "$LOG" ]; then
  size=$(wc -c < "$LOG" | tr -d " ")
  if [ "$size" -gt 1048576 ]; then
    tail -n 200 "$LOG" > "$LOG.tmp" && mv "$LOG.tmp" "$LOG"
  fi
fi

if ! mc_pong "$LOCAL_HOST" "$LOCAL_PORT"; then
  log "minecraft local sin respuesta; no reinicio playit"
  exit 0
fi

if mc_pong "$TUNNEL_HOST" "$TUNNEL_PORT"; then
  echo 0 > "$FAILS"
  exit 0
fi

n=0
if [ -f "$FAILS" ]; then
  n=$(cat "$FAILS" 2>/dev/null || echo 0)
fi
n=$((n + 1))
echo "$n" > "$FAILS"
log "tunel $TUNNEL_HOST:$TUNNEL_PORT sin respuesta (fallo $n)"

if [ "$n" -lt "$STRIKES" ]; then
  exit 0
fi

now=$(date +%s)
if [ -f "$LAST" ]; then
  prev=$(cat "$LAST" 2>/dev/null || echo 0)
  if [ $((now - prev)) -lt "$COOLDOWN" ]; then
    log "en enfriamiento; no reinicio"
    exit 0
  fi
fi

log "reiniciando playit-quesoland"
if rc-service playit-quesoland restart; then
  echo "$now" > "$LAST"
  echo 0 > "$FAILS"
  log "playit reiniciado"
else
  log "fallo al reiniciar playit"
  exit 1
fi
