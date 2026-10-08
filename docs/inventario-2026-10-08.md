# Inventario QuesoLand — 2026-10-08

Generado: Thu Oct  8 13:34:56 UTC 2026

## 1. Tamanos

- **data total:** 3.8G

### Subcarpetas principales
4.0K	/opt/quesoland/data/READ_ME.txt
4.0K	/opt/quesoland/data/banned-ips.json
4.0K	/opt/quesoland/data/banned-players.json
4.0K	/opt/quesoland/data/eula.txt
4.0K	/opt/quesoland/data/moonlight-global-datapacks
4.0K	/opt/quesoland/data/ops.json
4.0K	/opt/quesoland/data/patchouli_books
4.0K	/opt/quesoland/data/server.properties
4.0K	/opt/quesoland/data/server.properties.bak-whitelist-20261005
4.0K	/opt/quesoland/data/start.bat
4.0K	/opt/quesoland/data/usercache.json
4.0K	/opt/quesoland/data/usernamecache.json
4.0K	/opt/quesoland/data/variables.txt
4.0K	/opt/quesoland/data/whitelist.json
4.0K	/opt/quesoland/data/whitelist.json.bak-20261005
4.0K	/opt/quesoland/data/whitelist.json.bak-david-20261005
4.0K	/opt/quesoland/data/whitelist.json.bak-thecsu-20261006
8.0K	/opt/quesoland/data/configureddefaults
8.0K	/opt/quesoland/data/install_java.ps1
8.0K	/opt/quesoland/data/install_java.sh
12.0K	/opt/quesoland/data/local
12.0K	/opt/quesoland/data/server-icon.png
28.0K	/opt/quesoland/data/start.sh
32.0K	/opt/quesoland/data/start.ps1
180.0K	/opt/quesoland/data/fabric-server-mc.1.20.1-loader.0.18.4-launcher.1.1.2.jar
236.0K	/opt/quesoland/data/debug
3.0M	/opt/quesoland/data/logs
14.0M	/opt/quesoland/data/versions
18.4M	/opt/quesoland/data/modernfix
20.1M	/opt/quesoland/data/defaultconfigs
21.3M	/opt/quesoland/data/config
41.2M	/opt/quesoland/data/libraries
591.9M	/opt/quesoland/data/mods
3.0G	/opt/quesoland/data/world

### Mundos
- Overworld (`world`): 3.0G
- Nether (DIM-1): 854.5M
- End (DIM1): 20.0K

### Dimensiones bajo world/dimensions
16.0K	/opt/quesoland/data/world/dimensions/aether/the_aether
16.0K	/opt/quesoland/data/world/dimensions/deeperdarker/otherside
16.0K	/opt/quesoland/data/world/dimensions/edenring/edenring
8.0K	/opt/quesoland/data/world/dimensions/minecraft/server_faucet_test_level
16.0K	/opt/quesoland/data/world/dimensions/the_bumblezone/the_bumblezone
20.0K	/opt/quesoland/data/world/dimensions/voidz/void

### region / entities / poi
2.0G	/opt/quesoland/data/world/region
108.4M	/opt/quesoland/data/world/entities
53.8M	/opt/quesoland/data/world/poi

## 2. server.properties (sin rcon.password)
```
rcon.port=25575
level-seed=
level-name=world
motd=Better MC [FABRIC] 1.20.1
max-players=15
online-mode=false
view-distance=6
server-port=25565
enable-rcon=true
simulation-distance=4
white-list=true
enforce-whitelist=true
rcon.password=<OCULTO>
```

## 3. Version, Java, JVM, compose

### Java del contenedor
```
openjdk version "17.0.15" 2025-04-15
OpenJDK Runtime Environment Temurin-17.0.15+6 (build 17.0.15+6)
OpenJDK 64-Bit Server VM Temurin-17.0.15+6 (build 17.0.15+6, mixed mode, sharing)
```

### Fabric / Minecraft
```

0.18.4

/opt/quesoland/data/fabric-server-mc.1.20.1-loader.0.18.4-launcher.1.1.2.jar
[23:05:16] [main/INFO]: Loading Minecraft 1.20.1 with Fabric Loader 0.18.4
[23:06:19] [Server thread/INFO]: Starting minecraft server version 1.20.1
[10:05:55] [main/INFO]: Loading Minecraft 1.20.1 with Fabric Loader 0.18.4
[10:06:59] [Server thread/INFO]: Starting minecraft server version 1.20.1
[10:05:54] [main/INFO]: Loading Minecraft 1.20.1 with Fabric Loader 0.18.4
[10:06:59] [Server thread/INFO]: Starting minecraft server version 1.20.1
[20:28:19] [main/INFO]: Loading Minecraft 1.20.1 with Fabric Loader 0.18.4
[20:29:27] [Server thread/INFO]: Starting minecraft server version 1.20.1
[08:00:54] [main/INFO]: Loading Minecraft 1.20.1 with Fabric Loader 0.18.4
[08:02:01] [Server thread/INFO]: Starting minecraft server version 1.20.1
```

### Env JVM / memoria (sanitizado)
```
SYNC_CHUNK_WRITES=false
SIMULATION_DISTANCE=4
ENFORCE_WHITELIST=TRUE
MAX_PLAYERS=15
GID=1000
USE_AIKAR_FLAGS=true
ONLINE_MODE=FALSE
ENABLE_RCON=<OCULTO>
ENABLE_WHITELIST=TRUE
MAX_CHAINED_NEIGHBOR_UPDATES=100000
VERSION=1.20.1
VIEW_DISTANCE=6
TYPE=FABRIC
FABRIC_LOADER_VERSION=0.18.4
ENTITY_BROADCAST_RANGE_PERCENTAGE=75
ENFORCE_SECURE_PROFILE=false
MEMORY=8G
EULA=TRUE
UID=1000
PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
JAVA_HOME=/opt/java/openjdk
LANG=en_US.UTF-8
LANGUAGE=en_US:en
LC_ALL=en_US.UTF-8
JAVA_VERSION=jdk-17.0.15+6

```

### docker-compose.yml (sanitizado)
```yaml
services:
  mc:
    container_name: quesoland
    dns:
      - 8.8.8.8
      - 1.1.1.1
    image: itzg/minecraft-server:java17
    ports:
      - "25565:25565"
      - "24454:24454/udp"
    environment:
      EULA: "TRUE"
      TYPE: "FABRIC"
      VERSION: "1.20.1"
      FABRIC_LOADER_VERSION: "0.18.4"
      MEMORY: "8G"
      USE_AIKAR_FLAGS: "true"
      ONLINE_MODE: "FALSE"
      ENABLE_WHITELIST: "TRUE"
      ENFORCE_WHITELIST: "TRUE"
      ENFORCE_SECURE_PROFILE: "false"
      MAX_PLAYERS: "15"
      VIEW_DISTANCE: "6"
      SIMULATION_DISTANCE: "4"
      SYNC_CHUNK_WRITES: "false"
      ENTITY_BROADCAST_RANGE_PERCENTAGE: "75"
      MAX_CHAINED_NEIGHBOR_UPDATES: "100000"
      ENABLE_RCON: "true"
      UID: "1000"
      GID: "1000"
    volumes:
      - ./data:/data
    restart: unless-stopped
    stdin_open: true
    tty: true
    mem_limit: 10g

    healthcheck:
      test: ["CMD-SHELL", "mc-monitor status --host $$(ip -4 route show default | awk '/default/ {print $$3; exit}') --port 25565"]
      interval: 30s
      timeout: 10s
      retries: 3
      start_period: 120s

  backup:
    container_name: quesoland-backup
    image: itzg/mc-backup:latest
    environment:
      RCON_HOST: mc
      RCON_PORT: "25575"
      RCON_PASSWORD_FILE: /data/.rcon_password
      BACKUP_INTERVAL: "6h"
      PRUNE_BACKUPS_DAYS: "3"
      INITIAL_DELAY: "1m"
      SRC_DIR: "/data"
      DEST_DIR: "/backups"
      EXCLUDES: "*.jar,mods,logs,cache,*.log"
      TAR_COMPRESS_METHOD: "zstd"
      ZSTD_PARAMETERS: "-1 --threads=1"
    volumes:
      - ./data:/data:ro
      - ./backups:/backups
    depends_on:
      - mc
    restart: unless-stopped
```

## 4. Mods

- Cantidad de jars: 294

### Lista
```
1.5.4.jar
AdvancedLootInfo-fabric-1.20.1-1.7.0.jar
Aquatic
AutochefsDelight-1.20.1-Fabric-1.0.6.jar
BOMD-1.7.5-1.20.1.jar
BarteringStation-v8.0.0-1.20.1-Fabric.jar
BetterCompatibilityChecker-fabric-4.0.8+mc1.20.1.jar
BetterTridents-v8.0.1-1.20.1-Fabric.jar
Bookshelf-Fabric-1.20.1-20.2.13.jar
Bountiful-6.0.4+1.20.1-fabric.jar
Chunky-1.3.146.jar
Cliffs
ClimateRivers-v20.1.0-1.20.1-Fabric.jar
Clumps-fabric-1.20.1-12.0.0.4.jar
ConfiguredDefaults-v8.0.4-1.20.1-Fabric.jar
Corgilib-Fabric-1.20.1-4.0.3.4.jar
CrashAssistant-fabric-1.19-1.21.4-1.10.28.jar
CutThrough-v8.0.2-1.20.1-Fabric.jar
Debugify-1.20.1+2.0.jar
DiagonalFences-v8.1.5-1.20.1-Fabric.jar
DungeonsArise-1.20.x-2.1.58-fabric-release.jar
EasyAnvils-v8.0.2-1.20.1-Fabric.jar
EasyMagic-v8.0.1-1.20.1-Fabric.jar
EndersDelight-1.20.1-1.0.2.refabricated.jar
EpheroLib-1.20.1-FABRIC-1.2.0.jar
Explorify
FallingTree-1.20.1-4.3.4.jar
FarmersDelight-1.20.1-2.4.1+refabricated.jar
FarmersStructures-1.0.0-1.20_fabric.jar
FastItemFrames-v20.1.5-1.20.1-Fabric.jar
FauxCustomEntityData-fabric-1.20.1-6.0.1.jar
Feature-Recycler-fabric-1.0.1.jar
ForgeConfigAPIPort-v8.0.3-1.20.1-Fabric.jar
ForgeConfigScreens-v8.0.2-1.20.1-Fabric.jar
Geophilic
Hearths
Hybrid
Iceberg-1.20.1-fabric-1.1.25.jar
IllagerInvasion-v8.0.7-1.20.1-Fabric.jar
Jade-1.20-Fabric-11.13.1.jar
JadeAddons-1.20.1-Fabric-5.5.1.jar
Kambrik-6.1.1+1.20.1-fabric.jar
Kill
Kiwi-1.20.1-Fabric-11.10.2.jar
LeavesBeGone-v8.0.0-1.20.1-Fabric.jar
Lithostitched
Log-Begone-Fabric-1.20.1-1.0.8.jar
LongNbtKiller-Fabric-1.20.1-1.0.0.jar
MRU-1.0.4+1.20.1+fabric.jar
MagnumTorch-v8.0.2-1.20.1-Fabric.jar
MapDistanceFix-1.0.13+mc1.19.3-1.20.1.jar
MoogsMissingVillages-1.20-2.0.0.jar
MoogsNetherStructures-1.20-2.0.3.jar
MoogsVoyagerStructures-1.20-5.0.3.jar
MyNethersDelight-1.20.1-1.0.4+1.7.6.refabricated.jar
NaturesCompass-1.20.1-2.2.3-fabric.jar
Neruina-2.3.1-beta.1-fabric+1.20.1.jar
NetherChested-v8.0.4-1.20.1-Fabric.jar
NoChatReports-FABRIC-1.20.1-v2.2.2.jar
Oh-The-Biomes-Weve-Gone-Fabric-1.6.6.jar
Oh-The-Trees-Youll-Grow-fabric-1.20.1-1.5.0.jar
Paintings-fabric-1.20.1-11.0.0.2.jar
Patchouli-1.20.1-84.1-FABRIC.jar
Paxi-1.20-Fabric-4.0.jar
PhilipsRuins1.20.1-5.7-Fabric.jar
Ping-Wheel-1.12.1-fabric-1.20.1.jar
Platform-fabric-1.20.1-1.2.11.3.jar
PuzzlesLib-v8.1.33-1.20.1-Fabric.jar
Quest
RoughlyEnoughItems-12.1.785-fabric.jar
ServerBrowser-1.20.1-FABRIC-1.3.1.jar
SkeletonAIFix-v20.1.1-1.20.1-Fabric.jar
SnowRealMagic-1.20.1-Fabric-10.7.0.jar
SnowUnderTrees-2.5.4+1.20.1.jar
Stoneworks-v8.0.0-1.20.1-Fabric.jar
Stony
Structory_1.20.x_v1.3.5.jar
Structory_Towers_1.20.x_v1.0.7.jar
SubtleEffects-fabric-1.20.1-1.13.2.jar
Task-0.2.0+1.20.1-fabric.jar
TerraBlender-fabric-1.20.1-3.0.1.10.jar
ToolStats-Fabric-1.20.1-16.0.9.jar
Towns-and-Towers-1.12-Fabric+Forge.jar
TradingPost-v8.0.2-1.20.1-Fabric.jar
VillagersPlus_3.1_(FABRIC)_for_1.20.1.jar
VisualWorkbench-v8.0.1-1.20.1-Fabric.jar
YungsApi-1.20-Fabric-4.0.6.jar
YungsBetterDungeons-1.20-Fabric-4.0.4.jar
YungsBetterEndIsland-1.20-Fabric-2.0.6.jar
YungsBetterJungleTemples-1.20-Fabric-2.0.5.jar
YungsBetterMineshafts-1.20-Fabric-4.0.4.jar
YungsBetterNetherFortresses-1.20-Fabric-2.0.6.jar
YungsBetterOceanMonuments-1.20-Fabric-3.0.4.jar
YungsBetterStrongholds-1.20-Fabric-4.0.3.jar
YungsBetterWitchHuts-1.20-Fabric-3.0.3.jar
[1.20.1-Fabric]
abridged-2.0.0-fabric-1.20.1.jar
accessories-fabric-1.0.0-beta.48+1.20.1.jar
accessories_tclayer-3.8.1-beta.14+1.20.1.jar
accessorify-2.4.0-beta.5+1.20.1-fabric.jar
adorabuild-structures-2.8.0-fabric-1.20.1.jar
advancednetherite-fabric-2.1.3-1.20.1.jar
adventurez-1.4.20.jar
aether-1.20.1-1.5.2-beta.9-fabric.jar
almanac-1.20.x-fabric-1.0.2.jar
alternate-current-mc1.20-1.9.0.jar
amendments-1.20-2.2.3-fabric.jar
animal_feeding_trough-1.1.0+1.20.1.jar
another_furniture-fabric-1.20.1-3.0.5.jar
architectury-9.2.14-fabric.jar
ash_api-fabric-3.0.2+1.20.1.jar
athena-fabric-1.20.1-3.1.2.jar
autoslabs-1.1.3.jar
balm-fabric-1.20.1-7.3.38.jar
bclib-3.0.14.jar
better-end-4.0.11.jar
better-nether-9.0.10.jar
better-trim-tooltips-1.0.1.jar
betterchunkloading-fabric-1.20.1-5.5.jar
betterend-crashed-ships-1.0.0.jar
betterstats-3.12.6+fabric-1.20.1.jar
biolith-fabric-1.0.1-alpha.1.jar
biomemusic-fabric-1.20.1-3.5.jar
blended-compat-1.1.2.jar
blossom.jar
bygonenether-1.20-1.3.2.jar
cardinal-components-api-5.2.3.jar
carryon-fabric-1.20.1-2.1.2.7.jar
certain_questing_additions-fabric-1.1.3+mc1.20.1.jar
cerulean-fabric-1.0.0-1.20.1.jar
charm-fabric-1.20.1-forked-6.0.25.jar
charmofundying-fabric-6.5.0+1.20.1.jar
chefs-delight-1.0.4-fabric-1.20.1.jar
chipped-fabric-1.20.1-3.0.7.jar
chunkactivitytracker-fabric-1.0.1-1.20.1.jar
chunksending-fabric-1.20.1-2.8.jar
clientcrafting-fabric-1.20.1-1.8.jar
clientsort-fabric-2.1.7+1.20.1.jar
cloth-config-11.1.136-fabric.jar
collective-1.20.1-8.13.jar
comforts-fabric-6.4.0+1.20.1.jar
connectivity-fabric-1.20.1-7.6.jar
coroutil-fabric-1.20.1-1.3.7.jar
crashexploitfixer-fabric-1.1.0+1.20.1.jar
crawl-0.12.0.jar
cristellib-1.1.5-fabric.jar
cultural-delights-fabric-1.0.5+1.20.1.jar
cupboard-fabric-1.20.1-2.7.jar
dawn-5.0.0.jar
decorative_blocks-fabric-1.20.1-4.1.3.jar
deeperdarker-fabric-1.20-1.3.3.jar
despawntweaks-fabric-1.0.0-1.20.1.jar
dimensionalsyncfixes-fabric-1.20.1-0.0.2.jar
does_it_tick-fabric-1.1.4-1.20.1.jar
dragonloot-1.1.4.jar
dynamictrim-1.4.1-fabric+1.20.1.jar
earlybedtime-fabric-1.0.0-1.20.1.jar
easydisenchanting-fabric-1.0.1-1.20.1.jar
eden-ring-reforked-20.1.20+1.20.1.jar
elytraslot-fabric-6.4.4+1.20.1.jar
everycomp-1.20-2.9.12-fabric.jar
expandeddelight-0.3.2.jar
explorations-fabric-1.20.1-1.6.1.jar
f15-88.mod.jar
fabric-api-0.92.7+1.20.1.jar
fabric-language-kotlin-1.13.8+kotlin.2.3.0.jar
fabric-seasons-2.4.2-BETA+1.20.jar
fabric-seasons-delight-1.3.9-compat-1.0.jar
fabric-seasons-extras-1.3.2-BETA+1.20.jar
fabrication-3.6.5+1.20.jar
fabricseasonsrecipefix-1.0.0.jar
farmersknives-3.2.jar
fastasyncworldsave-fabric-1.20.1-2.6.jar
fasterrandom-5.1.0.jar
fastpaintings-1.20-1.2.7-fabric.jar
ferritecore-6.0.1-fabric.jar
foolproof-fabric-1.0.4-1.20.1.jar
for
formations-1.0.4-fabric-mc1.20.2.jar
formationsnether-1.0.5.jar
formationsoverworld-1.0.5-mc1.20.jar
framework-fabric-1.20.1-0.6.16.jar
friendsandfoes-fabric-mc1.20.1-3.0.9.jar
frostiful-1.0.11.jar
ftb-filter-system-fabric-20.0.1.jar
ftb-library-fabric-2001.2.12.jar
ftb-quests-fabric-2001.4.17.jar
ftb-teams-fabric-2001.3.2.jar
ftb-xmod-compat-fabric-2.1.3.jar
fullstackwatchdog-1.0.1+1.19.2-fabric.jar
fzzy_config-0.7.5+1.20.1.jar
geckolib-fabric-1.20.1-4.8.2.jar
goblintraders-fabric-1.20.1-1.9.3.jar
graves-3.0.3+1.20.1.jar
guardvillagers-2.0.9-1.20.1.jar
handcrafted-fabric-1.20.1-3.0.6.jar
hearth_and_home-fabric-1.20.1-2.0.3.jar
immersivearmorhud-fabric-1.0.1-1.20.1.jar
immersivelanterns-fabric-1.0.6-1.20.1.jar
immersivemessages-fabric-1.0.18-1.20.1.jar
improved-village-placement-1.1.2.jar
inmis-2.7.2-1.20.1.jar
inmisaddon-1.0.4.jar
iris-1.7.6+mc1.20.1.jar
item-filters-fabric-2001.1.0-build.59.jar
jamlib-fabric-1.3.5+1.20.1.jar
keybind_fix-1.0.0.jar
kleeslabs-fabric-1.20.1-15.0.11.jar
konkrete_fabric_1.8.1_MC_1.20.1.jar
krypton-0.2.3.jar
leaderboards-1.20.1-Fabric-1.0.0.jar
lithium-fabric-mc1.20.1-0.11.4.jar
lithostitched-fabric-1.20.1-1.4.11.jar
lmft-1.1.1+1.21.9-fabric.jar
loadingprotection-1.0.2-fabric-1.20.1.jar
lootintegration_wda-1.7.jar
lootintegrations-fabric-1.20.1-4.7.jar
luna_minecraft-fabric-5.3.1.jar
mediumcore-fabric-1.0.0+1.20.1.jar
melody_fabric_1.0.4_MC_1.20.1-1.20.4.jar
memoryleakfix-fabric-1.17+-1.1.5.jar
memorysettings-fabric-1.20.1-5.9.jar
mes-1.4.6-1.20-fabric.jar
midnightlib-fabric-1.9.2+1.20.1.jar
misctweaks-1.2.9+1.20.1-fabric.jar
mixintrace-1.1.1+1.17.jar
modernfix-fabric-5.24.4+mc1.20.1.jar
modmenu-7.2.2.jar
modpack-update-checker-1.20.1-fabric-0.15.6.jar
moogs_structure_lib-1.1.0-1.20-1.20.4-fabric.jar
moonlight-1.20-2.16.24-fabric.jar
mythic_charms-1.3.3.jar
naturalist-5.0pre5+fabric-1.20.1.jar
netherportalfix-fabric-1.20-13.0.2.jar
oceansdelight-fdrf-fabric-1.0.2-1.20.jar
open-parties-and-claims-fabric-1.20.1-0.25.8.jar
owo-lib-0.11.2+1.20.jar
packanalytics-fabric-1.0.4-1.20.1.jar
packetfixer-3.3.1-1.18-1.20.4-merged.jar
passengersportalfix-fabric-0.0.2.jar
polymer-bundled-0.5.20+1.20.1.jar
polymorph-fabric-0.49.10+1.20.1.jar
promenade-4.1.1.jar
puffish_biome_dither-1.0.0-1.19.2-fabric.jar
quartz-elevator-2.2.7+1.20.4.jar
quesoland-playtime-1.0.0.jar
reacharound+1.20-1.3.1.jar
recipeessentials-fabric-1.20.1-4.1.jar
redirected-fabric-1.0.0-1.20.1.jar
reintegrated_chipped-1.0.0.jar
repurposed_structures-7.1.19+1.20.1-fabric.jar
reset_controls_confirmation-fabric-1.0.0-1.20.1.jar
resourcefulconfig-fabric-1.20.1-2.1.3.jar
resourcefullib-fabric-1.20.1-2.1.29.jar
rightclickharvest-fabric-4.6.1+1.20.1.jar
sawmill-1.20-1.4.10-fabric.jar
simple_snowy_fix-fabric-1.19-1.21-2.1.5.jar
skinlayers3d-fabric-1.10.1-mc1.20.1.jar
skinrestorer-2.8.1+1.20-fabric.jar
smarterfarmers-1.20-2.1.2-fabric.jar
smoothchunk-fabric-1.20.1-4.1.jar
snowyspirit-1.20-3.0.10-fabric.jar
sound-physics-remastered-fabric-1.20.1-1.5.1.jar
spark-1.10.53-fabric.jar
sparsestructures-fabric-1.20.1-3.0.jar
spawn-1.0.3-fabric.jar
spawnersplus-4.3.3-1.20.1.jar
starlight-1.1.2+fabric.dbc156f.jar
structure_layout_optimizer-fabric-1.0.11.jar
structureessentials-fabric-1.20.1-4.8.jar
supplementaries-1.20-3.1.41-fabric.jar
suppsquared-1.20-1.1.29.jar
talkbubbles-1.0.8.jar
tcdcommons-3.12.3.3+fabric-1.20.1.jar
the_bumblezone-7.9.8+1.20.1-fabric.jar
thermoo-2.3.3.jar
thermoo-patches-1.1.jar
toms_storage_fabric-1.20-1.7.1.jar
toms_trading_network-fabric-1.20-0.3.0.jar
toofast-fabric-1.20-1.2.0.jar
transparent-fabric-8.0.1+1.20.1.jar
twigs-3.1.0-fabric.jar
txnilib-fabric-1.0.24-1.20.1.jar
ucrashedlol-0.0.3+1.20.1.jar
underlay-0.9.9-fabric-mc1.20.1.jar
underwater-swim-fix-1.0.2.jar
universal_ores-1.5.2.jar
v1.0.5.mod.jar
v1.1.2.jar
v1.6.4
v3.4.6.mod.jar
vanillabackport-fabric-1.20.1-1.1.4.3.jar
variantcraftingtables-6.4.jar
veinmining-fabric-1.5.0+1.20.1.jar
villagernames-1.20.1-8.2.jar
villagesandpillages-fabric-mc1.20.1-1.0.2.jar
voicechat-fabric-1.20.1-2.6.24.jar
voidtotem-fabric-1.20-3.0.1.jar
voidz-1.0.11.jar
watut-fabric-1.20.1-1.2.3.jar
winterly-0.9.3+1.20.jar
wraith-waystones-3.3.3+mc1.20.1.jar
xaerominimap-fabric-1.20.1-25.3.5.jar
xaeroworldmap-fabric-1.20.1-1.40.6.jar
xp_storage-1.5.7+1.20.1.jar
xpstorage_trinkets-1.0+1.20.1.jar
yet_another_config_lib_v3-3.6.6+1.20.1-fabric.jar
```

### Datos propios de mods (rutas)
```
CoroUtil
InventoryHUD
LunaPixelStudios
MouseTweaks.cfg
NoChatReports
abridged.json
accessories.json5
accessorify
adventurez.json5
aether
aether-client.toml
aether-common.toml
ali
amendments-client.json
amendments-common.json
animatica.properties
audioimprovements.json
auto_slabs.json
backpacked-client.toml
backpacked-common.toml
badoptimizations.txt
balm-client.toml
balm-common.out.toml
balm-common.toml
balm-common.toml.bak1
barteringstation-client.toml
barteringstation-server.toml
bcc.json
bclib
betteradvancements.json
betterchunkloading.json
betterdungeons-fabric-1_20.toml
betterend
betterendisland-fabric-1_20.toml
betterfortresses
betterfortresses-fabric-1_20.toml
betterfpsdist.json
bettergrass.json5
betterjungletemples-fabric-1_20.toml
bettermineshafts-fabric-1_20.toml
betternether
betteroceanmonuments-fabric-1_20.toml
betterstrongholds
betterstrongholds-fabric-1_20.toml
bettertridents-common.toml
bettertridents-server.toml
betterwitchhuts-fabric-1_20.toml
bhmenu
biolith
biomemusic.json
biomeswevegone
boatiview
bobby.conf
bosses_of_mass_destruction.json5
bountiful
c2me.toml
cardinal-components-api.properties
carryon-client.json
carryon-common.json
cerulean-client.toml
cerulean-common.toml
cerulean-server.toml
cerulean.yml
charm-client.toml
charm-common.toml
charmofundying-server.toml
charmony-common.toml
chat_heads.json5
chefsdelightconfig.properties
chunkactivitytracker-server.toml
chunksending.json
chunky
citresewn-defaults.json
citresewn.json
clientsort-server.json
clientsort.json
collective
collective.json5
colorwheel.json
comforts-server.toml
connectivity.json
continuity.json
controlify.json
corgilib
crash_assistant
cristellib
crowdin.txt
cubes-without-borders.json
cull-less-leaves.json
cumulus_menus-client.toml
cupboard.json
cutthrough-client.toml
debugify-descriptions.json
debugify.json
deeperdarker.json5
despawntweaks-common.toml
deuf_refabricated.json
distraction_free_recipes-client.toml
does_it_tick-common.toml
dragonloot.json5
---
/opt/quesoland/data/config
/opt/quesoland/data/config/jade
/opt/quesoland/data/config/aether
/opt/quesoland/data/config/xp_storage
/opt/quesoland/data/config/NoChatReports
/opt/quesoland/data/config/voicechat
/opt/quesoland/data/config/spark
/opt/quesoland/data/config/spark/tmp
/opt/quesoland/data/config/InventoryHUD
/opt/quesoland/data/config/corgilib
/opt/quesoland/data/config/ftbquests
/opt/quesoland/data/config/ftbquests/quests
/opt/quesoland/data/config/crash_assistant
/opt/quesoland/data/config/crash_assistant/crash_assistant_localization_overrides
/opt/quesoland/data/config/betterend
/opt/quesoland/data/config/CoroUtil
/opt/quesoland/data/config/spyglass-improvements
/opt/quesoland/data/config/biolith
/opt/quesoland/data/config/villagernames
/opt/quesoland/data/config/modpack-update-checker
/opt/quesoland/data/config/cristellib
/opt/quesoland/data/config/polymer
/opt/quesoland/data/config/collective
/opt/quesoland/data/config/villagersplus
/opt/quesoland/data/config/sound_physics_remastered
/opt/quesoland/data/config/fzzy_config
/opt/quesoland/data/config/ali
/opt/quesoland/data/config/chunky
/opt/quesoland/data/config/chunky/tasks
/opt/quesoland/data/config/boatiview
/opt/quesoland/data/config/fabrication
/opt/quesoland/data/config/yosbr
/opt/quesoland/data/config/fwaystones
/opt/quesoland/data/config/ftblibrary
/opt/quesoland/data/config/worldplaytime
/opt/quesoland/data/config/bountiful
/opt/quesoland/data/config/bountiful/bounty_decrees
/opt/quesoland/data/config/bountiful/bounty_pools
/opt/quesoland/data/config/promenade
/opt/quesoland/data/config/explorify
/opt/quesoland/data/config/konkrete
/opt/quesoland/data/config/konkrete/locals
/opt/quesoland/data/config/biomeswevegone
/opt/quesoland/data/config/betternether
/opt/quesoland/data/config/fabric
/opt/quesoland/data/config/paxi
/opt/quesoland/data/config/paxi/datapacks
/opt/quesoland/data/config/paxi/resourcepacks
/opt/quesoland/data/config/betterfortresses
/opt/quesoland/data/config/betterfortresses/fabric-1_20
/opt/quesoland/data/config/towns_and_towers
/opt/quesoland/data/config/drippyloadingscreen
/opt/quesoland/data/config/servercountryflags
/opt/quesoland/data/config/roughlyenoughitems
/opt/quesoland/data/config/universal-graves
/opt/quesoland/data/config/universal-graves/models
/opt/quesoland/data/config/universal-graves/example_models
/opt/quesoland/data/config/accessorify
/opt/quesoland/data/config/spawnersplus
/opt/quesoland/data/config/statement
/opt/quesoland/data/config/bhmenu
/opt/quesoland/data/config/ysns
/opt/quesoland/data/config/edenring
/opt/quesoland/data/config/jamlib
/opt/quesoland/data/config/fancymenu
/opt/quesoland/data/config/fancymenu/layout_editor
/opt/quesoland/data/config/fancymenu/assets
/opt/quesoland/data/config/fancymenu/locals
/opt/quesoland/data/config/fancymenu/slideshows
/opt/quesoland/data/config/fancymenu/panoramas
/opt/quesoland/data/config/fancymenu/custom_locals
/opt/quesoland/data/config/fancymenu/ui_themes
/opt/quesoland/data/config/fancymenu/minecraftwindow
/opt/quesoland/data/config/fancymenu/customization
/opt/quesoland/data/config/serverbrowser
/opt/quesoland/data/config/misctweaks
/opt/quesoland/data/config/bclib
/opt/quesoland/data/config/skinrestorer
/opt/quesoland/data/config/ftbxmodcompat
/opt/quesoland/data/config/justzoom
--- playtime ---
-rw-rw-r--    1 amigo    amigo         4288 Oct  8 08:34 /opt/quesoland/data/config/quesoland-playtime.json
-rw-r--r--    1 amigo    amigo        17590 Oct  5 18:02 /opt/quesoland/data/mods/quesoland-playtime-1.0.0.jar
-rw-r--r--    1 amigo    amigo        17097 Oct  4 17:40 /opt/quesoland/data/mods/quesoland-playtime-1.0.0.jar.bak-20261005
-rw-r--r--    1 amigo    amigo        83258 Jan 24  2026 /opt/quesoland/data/mods/worldplaytime-1.2.3-1.20.x-FABRIC.jar.disabled
--- graves ---
total 44
drwxr-xr-x    4 amigo    amigo         4096 Jan 24  2026 .
drwxr-xr-x   64 amigo    amigo        20480 Oct  8 08:34 ..
-rw-r--r--    1 amigo    amigo        10471 Oct  8 03:02 config.json
drwxr-xr-x    2 amigo    amigo         4096 Jan 24  2026 example_models
drwxr-xr-x    2 amigo    amigo         4096 Jan 24  2026 models
/opt/quesoland/data/config/universal-graves
/opt/quesoland/data/defaultconfigs/universal-graves
/opt/quesoland/data/modernfix/structureCacheV1/structory_harvest_manor2_graves_8e93cdac7e.nbt
/opt/quesoland/data/world/data/universal-graves.dat
/opt/quesoland/data/mods/graves-3.0.3+1.20.1.jar
--- waystones / inmis / chunky ---
/opt/quesoland/data/config/openpartiesandclaims-server.toml
/opt/quesoland/data/config/ftbquests
/opt/quesoland/data/config/chunky
/opt/quesoland/data/config/fwaystones
/opt/quesoland/data/config/ftblibrary
/opt/quesoland/data/config/ftblibrary/ftblibrary-client.snbt
/opt/quesoland/data/config/ftbxmodcompat.snbt
/opt/quesoland/data/config/inmis.json
/opt/quesoland/data/config/ftbxmodcompat
/opt/quesoland/data/config/ftbxmodcompat/ftbxmodcompat.snbt
/opt/quesoland/data/defaultconfigs/openpartiesandclaims-server.toml
/opt/quesoland/data/defaultconfigs/ftbquests
/opt/quesoland/data/defaultconfigs/fwaystones
/opt/quesoland/data/defaultconfigs/ftblibrary
/opt/quesoland/data/defaultconfigs/ftblibrary/ftblibrary-client.snbt
/opt/quesoland/data/defaultconfigs/ftbxmodcompat.snbt
/opt/quesoland/data/defaultconfigs/inmis.json
/opt/quesoland/data/defaultconfigs/ftbxmodcompat
/opt/quesoland/data/defaultconfigs/ftbxmodcompat/ftbxmodcompat.snbt
/opt/quesoland/data/modernfix/structureCacheV1/fwaystones_stone_brick_village_waystone_b42f9f2f5c.nbt
/opt/quesoland/data/modernfix/structureCacheV1/fwaystones_nether_brick_village_waystone_c6f238e933.nbt
/opt/quesoland/data/modernfix/structureCacheV1/fwaystones_mossy_stone_brick_village_waystone_59fb47b528.nbt
/opt/quesoland/data/modernfix/structureCacheV1/kaisyn_village_modded_waystones_waystone_default_3d8d7939fb.nbt
/opt/quesoland/data/modernfix/structureCacheV1/fwaystones_village_waystone_c5ca8846f0.nbt
/opt/quesoland/data/world/ftbquests
/opt/quesoland/data/world/ftbteams
/opt/quesoland/data/world/ftbteams/ftbteams.snbt
/opt/quesoland/data/world/data/fw_waystones.dat
/opt/quesoland/data/world/data/openpartiesandclaims
/opt/quesoland/data/world/serverconfig/openpartiesandclaims-server-claim-config.toml
/opt/quesoland/data/world/serverconfig/openpartiesandclaims-expired-claim-config.toml
/opt/quesoland/data/world/serverconfig/openpartiesandclaims-wilderness-config.toml
/opt/quesoland/data/world/serverconfig/openpartiesandclaims-default-player-config.toml
/opt/quesoland/data/mods/open-parties-and-claims-fabric-1.20.1-0.25.8.jar
/opt/quesoland/data/mods/ftb-filter-system-fabric-20.0.1.jar
/opt/quesoland/data/mods/ftb-quests-fabric-2001.4.17.jar
/opt/quesoland/data/mods/inmis-2.7.2-1.20.1.jar
/opt/quesoland/data/mods/wraith-waystones-3.3.3+mc1.20.1.jar
/opt/quesoland/data/mods/ftb-xmod-compat-fabric-2.1.3.jar
/opt/quesoland/data/mods/Chunky-1.3.146.jar
```

## 5. Playerdata / stats / advancements
- playerdata: 34 archivos
- stats: 17 archivos
- advancements: 17 archivos

## 6. Fuera de data (replicar)
```
4.0K	/opt/quesoland/CAMBIOS.md
4.0K	/opt/quesoland/chunky_supervisor.sh
4.0K	/opt/quesoland/docker-compose.yml
4.0K	/opt/quesoland/docker-compose.yml.bak-20261004
4.0K	/opt/quesoland/docker-compose.yml.bak-dns-20261005
4.0K	/opt/quesoland/docker-compose.yml.bak-whitelist-20261005
4.0K	/opt/quesoland/net-watchdog.sh
4.0K	/opt/quesoland/playit-watchdog.sh
4.0K	/opt/quesoland/playit.toml
4.0K	/opt/quesoland/restart-daily.sh
12.0K	/opt/quesoland/GUIA_PASOS.md
36.0K	/opt/quesoland/chunky_supervisor.log
40.0K	/opt/quesoland/migracion
5.5M	/opt/quesoland/playit.log
66.3M	/opt/quesoland/backups
2.3G	/opt/quesoland/safety-snapshots
3.8G	/opt/quesoland/data

total 5732
drwxr-xr-x    6 root     root          4096 Oct  8 08:29 .
drwxr-xr-x    6 root     root          4096 Oct  2 20:57 ..
-rw-r--r--    1 root     root          2463 Oct  2 23:33 CAMBIOS.md
-rw-r--r--    1 root     root          8415 Oct  2 23:33 GUIA_PASOS.md
drwxr-xr-x    2 root     root          4096 Oct  2 22:49 backups
-rw-r--r--    1 root     root         29749 Oct  7 12:44 chunky_supervisor.log
-rwxr-xr-x    1 root     root          1704 Oct  7 11:07 chunky_supervisor.sh
drwxr-xr-x   20 amigo    amigo         4096 Oct  7 05:05 data
-rw-r--r--    1 root     root          1658 Oct  6 16:07 docker-compose.yml
-rw-r--r--    1 root     root          1232 Oct  3 15:25 docker-compose.yml.bak-20261004
-rw-r--r--    1 root     root          1355 Oct  4 13:40 docker-compose.yml.bak-dns-20261005
-rw-r--r--    1 root     root          1396 Oct  5 16:40 docker-compose.yml.bak-whitelist-20261005
drwxr-xr-x    2 root     root          4096 Oct  8 08:32 migracion
-rwxr-xr-x    1 root     root          2429 Oct  7 15:38 net-watchdog.sh
-rwxr-xr-x    1 root     root          1888 Oct  6 16:07 playit-watchdog.sh
-rw-r--r--    1 root     root       5749976 Oct  8 08:19 playit.log
-rw-------    1 root     root            80 Oct  2 21:38 playit.toml
-rwxr-xr-x    1 root     root           390 Oct  4 13:40 restart-daily.sh
drwxr-xr-x    2 root     root          4096 Oct  4 13:40 safety-snapshots
```

## 7. Custom: playtime, watchdogs, playit

### quesoland-playtime (mod Fabric)
- Jar: `/opt/quesoland/data/mods/quesoland-playtime-1.0.0.jar`
- Estado: `/opt/quesoland/data/config/quesoland-playtime.json`
- Comandos: `/tiempo`, `/tiempo ver <jugador>`, `/tiempo perdonar <jugador>`
- En host sin shell: basta con copiar el jar a mods/ y el json de config; no necesita scripts externos.

### playit-watchdog.sh
- Ruta: `/opt/quesoland/playit-watchdog.sh`
- Cron: cada 5 min
- Reinicia Playit si Minecraft local responde y el tunel publico no.
- En host sin shell: hace falta un scheduler externo (systemd timer, cron, o Task Scheduler) o un healthcheck del proveedor.

### net-watchdog.sh
- Ruta: `/opt/quesoland/net-watchdog.sh`
- Cron: cada 3 min
- Si hay internet y ZeroTier/Tailscale siguen caidos, reinicia ese servicio; si hay cable sin internet, reinicia eth0.
- En host sin shell: depende de lo que el proveedor permita (reiniciar contenedores / servicios de red).

### restart-daily.sh
- Ruta: `/opt/quesoland/restart-daily.sh`
- Cron: 03:00 America/Bogota (0 3 * * *)
- Avisa, save-all flush, reinicia contenedor quesoland. No borra datos.

### Playit
- Binario: `/opt/playit/playitd`
- Secret: `/opt/quesoland/playit.toml` (NO subir a GitHub publico)
- Init: `/etc/init.d/playit-quesoland` (OpenRC + supervise-daemon)
- En host sin shell: instalar el agente Playit del proveedor o recrear el tunel en su panel.

### ZeroTier / Tailscale
- ZeroTier: contenedor `zerotier-one` (IP 10.73.2.29)
- Tailscale: servicio host OpenRC (`100.111.121.37`)

### crontab actual
```
# do daily/weekly/monthly maintenance
# min	hour	day	month	weekday	command
*/15	*	*	*	*	run-parts /etc/periodic/15min
0	*	*	*	*	run-parts /etc/periodic/hourly
0	2	*	*	*	run-parts /etc/periodic/daily
0	3	*	*	6	run-parts /etc/periodic/weekly
0	5	1	*	*	run-parts /etc/periodic/monthly

0 3 * * * /opt/quesoland/restart-daily.sh
*/5 * * * * /opt/quesoland/playit-watchdog.sh
*/3 * * * * /opt/quesoland/net-watchdog.sh
```

## Whitelist (vaciada antes del ensayo)
- Nombres guardados en: `migracion/whitelist-nombres.txt`
- Backup JSON: `migracion/whitelist.json.bak-before-clear`
- Lista en vivo: vacia (enforce-whitelist sigue activo en server.properties)

## Checklist host nuevo
1. Instalar Docker + docker-compose (o panel equivalente).
2. Copiar `docker-compose.yml` con variables (RCON nuevo o el mismo, no publicar).
3. Restaurar carpeta `data/` desde el zip (sin logs/crash-reports).
4. Restaurar whitelist desde `whitelist-nombres.txt` / backup JSON **con mayusculas exactas** (online-mode=false).
5. Instalar y autenticar Playit; NO reutilizar el toml en un repo publico.
6. ZeroTier y/o Tailscale opcionales para admin.
7. Copiar scripts `restart-daily.sh`, `playit-watchdog.sh`, `net-watchdog.sh` + crontab, o equivalentes del host.
8. El mod `quesoland-playtime` va en `mods/` + `config/quesoland-playtime.json`.
9. Abrir/publicar puerto 25565 (y VoiceChat UDP 24454 si se usa).
10. Verificar Java 17, Fabric loader 0.18.4, MC 1.20.1.
