#!/bin/sh
# Si hay internet y un tunel sigue caido, lo reinicia.
# No reinicia Minecraft.
set -u

LOG=/var/log/quesoland-net-watchdog.log
DIR=/run/quesoland-net
COOLDOWN=1200
LINK_COOLDOWN=1800
mkdir -p "$DIR"

log() {
  echo "$(date "+%Y-%m-%dT%H:%M:%S%z") $*" >> "$LOG"
}

if [ -f "$LOG" ]; then
  size=$(wc -c < "$LOG" | tr -d " ")
  if [ "$size" -gt 1048576 ]; then
    tail -n 200 "$LOG" > "$LOG.tmp" && mv "$LOG.tmp" "$LOG"
  fi
fi

strike() {
  name="$1"
  n=0
  if [ -f "$DIR/$name.n" ]; then
    n=$(cat "$DIR/$name.n" 2>/dev/null || echo 0)
  fi
  n=$((n + 1))
  echo "$n" > "$DIR/$name.n"
  echo "$n"
}

clear_strike() {
  echo 0 > "$DIR/$1.n"
}

cooled() {
  name="$1"
  wait="$2"
  now=$(date +%s)
  if [ -f "$DIR/$name.last" ]; then
    prev=$(cat "$DIR/$name.last" 2>/dev/null || echo 0)
    if [ $((now - prev)) -lt "$wait" ]; then
      return 1
    fi
  fi
  return 0
}

mark() {
  date +%s > "$DIR/$1.last"
}

internet_up() {
  ping -c 1 -W 3 1.1.1.1 >/dev/null 2>&1 && return 0
  ping -c 1 -W 3 8.8.8.8 >/dev/null 2>&1 && return 0
  return 1
}

if ! internet_up; then
  n=$(strike noinet)
  log "sin salida a internet (vez $n)"
  carrier=$(cat /sys/class/net/eth0/carrier 2>/dev/null || echo 0)
  if [ "$n" -ge 3 ] && [ "$carrier" = "1" ] && cooled link "$LINK_COOLDOWN"; then
    log "el cable responde y no hay internet; se reinicia la placa de red"
    ip link set eth0 down
    sleep 2
    ip link set eth0 up
    mark link
    clear_strike noinet
  fi
  exit 0
fi
clear_strike noinet

zt=$(docker exec zerotier-one zerotier-cli info 2>&1 || true)
if echo "$zt" | grep -q OFFLINE; then
  n=$(strike zt)
  log "zerotier offline (vez $n)"
  if [ "$n" -ge 2 ] && cooled zt "$COOLDOWN"; then
    log "reiniciando zerotier-one"
    if docker restart zerotier-one >/dev/null 2>&1; then
      mark zt
      clear_strike zt
      log "zerotier reiniciado"
    else
      log "fallo al reiniciar zerotier"
    fi
  fi
else
  clear_strike zt
fi

ts=$(timeout 8 tailscale status 2>&1 | head -n 1 || true)
if echo "$ts" | grep -Eqi "offline|stopped|NoState"; then
  n=$(strike ts)
  log "tailscale sin sesion (vez $n)"
  if [ "$n" -ge 2 ] && cooled ts "$COOLDOWN"; then
    log "reiniciando tailscale"
    if rc-service tailscale restart >/dev/null 2>&1; then
      mark ts
      clear_strike ts
      log "tailscale reiniciado"
    else
      log "fallo al reiniciar tailscale"
    fi
  fi
else
  clear_strike ts
fi
