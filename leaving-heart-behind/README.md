# Half Heart on Death — Minecraft Datapack

A high-stakes survival datapack for **Minecraft Java Edition (1.21.2+ through 26.2+)** where players lose half their health upon death, brew restorative potions to recover, and discover rare Heart Shards across ancient structures to permanently expand their maximum health pool.

---

## 📖 Overview & Gameplay Mechanics

### 1. Death Penalty & Health Halving
- **Configurable Death Reduction:** Whenever a player dies, both their **current health** (`hh_current_hp`) and **maximum health capacity** (`hh_max_hp`) are reduced by the configured loss percentage (`#death_loss_percent`, default: **50%**):
  $$\text{HP}_{\text{new}} = \left\lfloor \frac{\text{HP}_{\text{old}} \times (100 - \text{loss\_pct}) + 99}{100} \right\rfloor$$
- **Minimum Health Floor:** Health will never drop below the configured minimum (default: **1 HP** / half a heart).
- **Base Health Protection:** A player's maximum health capacity (`hh_max_hp`) will never drop below their initial base health (`hh_base_hp`, default: **20 HP** / 10 hearts).
- **Shard Loss on Death:**
  - Any extra heart containers granted by Heart Shards that fall into the **lost percentage** are permanently lost on death.
  - Any extra heart containers that remain in the **surviving percentage** (above base health) remain active and can be restored using potions.

#### Examples of Death Reduction (Default: 50% loss):
| Starting Health / Max | Respawn Health | Max Recoverable via Potions | Explanation |
| :--- | :--- | :--- | :--- |
| **20 HP** (10 hearts) | **10 HP** (5 hearts) | **20 HP** (10 hearts) | 50% lost. Halved from 20 to 10; potions restore back to base 20. |
| **24 HP** (12 hearts) | **12 HP** (6 hearts) | **20 HP** (10 hearts) | 50% of 24 is 12. The 4 HP from shards was in the lost 50%. Max capacity resets to base 20 HP. |
| **60 HP** (30 hearts) | **30 HP** (15 hearts) | **30 HP** (15 hearts) | 50% of 60 is 30. Since $30 > 20$ (base HP), the surviving 10 HP worth of shards remain in effect! |
| **10 HP** (5 hearts) | **5 HP** (2.5 hearts) | **20 HP** (10 hearts) | Second death. 50% of 10 is 5. |
| **3 HP** (1.5 hearts) | **2 HP** (1 heart) | **20 HP** (10 hearts) | Ceiling division: 3 HP reduced by 50% = 2 HP. |
| **2 HP** (1 heart) | **1 HP** (0.5 heart) | **20 HP** (10 hearts) | 2 HP reduced by 50% = 1 HP. |
| **1 HP** (0.5 heart) | **1 HP** (0.5 heart) | **20 HP** (10 hearts) | Reached minimum floor; cannot drop any lower. |

---

## 🧪 Custom Items & Recipes

### 1. Health Restoration Potion
Restores lost health containers up to the configured potion recovery limit (`#potion_max_hp`, default: **10 HP** / 5 hearts).

- **Effect:** Restores **8 HP (4 full hearts)** per bottle.
- **Configurable Healing Limit (`#potion_max_hp`):**
  - **Default (`10` HP / 5 hearts):** Potions can only heal a player up to 5 hearts! To regain health above 10 HP (up to 10 hearts or more), players must explore and find Heart Shards.
  - **`0`:** Potions will restore health all the way to full base health (`hh_base_hp`, default: 20 HP).
  - **Any custom number (e.g., `14`):** Sets a specific HP ceiling for potion healing.
- **No Waste / No Spam:** If consumed when the player's health is already at or above the potion ceiling ($\ge \text{effective\_cap}$), the potion is consumed with no effect and produces no chat spam.
- **Admin Command:**
  ```mcfunction
  /function half_heart:give_potion
  ```

#### Crafting Recipe:
Crafted on a standard 3x3 Crafting Table:
```
[ Gold Ingot ]  [ Golden Apple ]  [ Gold Ingot ]
[ Gold Ingot ]  [ Water Bottle ]  [ Gold Ingot ]
[ Gold Ingot ]  [  Gold Ingot  ]  [ Gold Ingot ]
```
- **Top Center:** 1× Golden Apple (`minecraft:golden_apple`)
- **Center:** 1× Water Bottle / Potion (`minecraft:potion`)
- **Outer Ring (7 slots):** 7× Gold Ingots (`minecraft:gold_ingot`)

---

### 2. Heart Shard
A rare mystical item that permanently grants additional heart containers.

- **Effect:** Permanently grants **+#shard_hp HP** (configurable, default: **+2 HP** / 1 heart container) to both maximum health capacity (`hh_max_hp`) and current health (`hh_current_hp`).
- **Immediate Healing:** Instantly fills the newly unlocked heart container with health upon consumption.
- **Essential Progression:** With potions capped at 10 HP by default, Heart Shards are the essential progression tool to climb from 5 hearts back to 10 hearts and beyond!
- **Server Cap:** Consumption is capped at the server maximum health limit (default: **60 HP** / 30 hearts).
- **Admin Command:**
  ```mcfunction
  /function half_heart:give_shard
  ```

---

## 🗺️ Chest Loot Locations & Spawn Rates

Heart Shards naturally generate inside loot chests across the world with the following distribution:

| Tier | Structures & Chest Locations | Shard Quantity / Chance |
| :--- | :--- | :--- |
| **Common Structures** | Dungeons (Monster Spawners)<br>Abandoned Mineshafts<br>Pillager Outposts<br>Desert Pyramids<br>Jungle Temples<br>Shipwrecks (Supply & Treasure)<br>Underwater Ruins | **5% chance** per chest |
| **End Dimensions** | End City Treasure Chests | **7% chance** per chest |
| **Good Structures** | Strongholds (Corridors, Crossings, Libraries)<br>Trial Chambers (Reward Vaults & Ominous Vaults) | **1 to 3 Shards** (Guaranteed) |
| **Super Structures** | Ancient Cities<br>Bastion Remnants (Treasure Rooms) | **5 to 10 Shards** (Guaranteed) |

---

## ⚙️ Configuration & Server Settings

To ensure 100% predictable behavior, all configuration settings are managed **strictly via the configuration file** and automatically loaded when the world starts or whenever `/reload` is executed.

### Configuration File Location:
```text
data/half_heart/function/config.mcfunction
```

### Configurable Parameters:
Open [config.mcfunction](file:///workspace/data/half_heart/function/config.mcfunction) in any text editor to modify the values:

```mcfunction
# 1. Minimum health limit (default: 1 HP = 0.5 heart, cannot drop lower on death)
scoreboard players set #min_hp hh_values 1

# 2. Maximum health limit (default: 60 HP = 30 hearts, cap for heart shard expansions)
scoreboard players set #max_hp hh_values 60

# 3. Default base health for new players (default: 20 HP = 10 hearts)
scoreboard players set #default_base_hp hh_values 20

# 4. Default server language for new players (1=ru, 2=en, 3=es, 4=zh, 5=de; default: 1 = Russian)
scoreboard players set #server_lang hh_values 1

# 5. Health gained per Heart Shard (default: 2 HP = 1 heart container)
scoreboard players set #shard_hp hh_values 2

# 6. Maximum health that Health Restoration Potions can restore
# 0 = restores up to full base health (default: 20 HP = 10 hearts)
# Any number = maximum HP threshold potion can heal up to (default: 10 HP = 5 hearts)
scoreboard players set #potion_max_hp hh_values 10

# 7. Health reduction percentage upon death (default: 50 = 50% health lost / *0.5)
# Value represents the percentage of health lost on death (e.g. 50 = 50%, 25 = 25%, 75 = 75%)
scoreboard players set #death_loss_percent hh_values 50
```

### Applying Changes:
After editing `config.mcfunction`, simply run in-game or via server console:
```mcfunction
/reload
```

---

## 🧹 Admin Reset & Uninstallation

Before removing or disabling the datapack from your world or server, administrators can run a clean reset command to restore all players' health back to original base health and wipe all datapack-specific scoreboards and tags.

### Reset Command:
```mcfunction
/function half_heart:reset
```

### What the Reset Command Does:
1. **Restores Player Health:** Sets every online player's max health attribute back to their original base health (`hh_base_hp`, default: 20 HP / 10 hearts).
2. **Instant Full Heal:** Heals all restored heart containers immediately so players are at full health.
3. **Removes Custom Tags & Advancements:** Clears `hh_initialized`, `hh_dead`, and revokes custom item consumption advancements.
4. **Deletes Scoreboard Objectives:** Safely removes all 11 `hh_*` scoreboard objectives.
5. **Clean Tick Freeze:** Halts the tick loop cleanly, preventing any errors in console if the datapack files are deleted or disabled.

---

## 🌐 Localization & Language Menu

The datapack features multi-language localization for all system messages:
1. **Russian (Русский)** — Language ID: `1`
2. **English** — Language ID: `2`
3. **Spanish (Español)** — Language ID: `3`
4. **Chinese Simplified (简体中文)** — Language ID: `4`
5. **German (Deutsch)** — Language ID: `5`

### Changing Your Language:
Any player can open the interactive clickable chat menu:
```mcfunction
/function half_heart:lang/menu
```
Clicking on any language flag in chat instantly updates the player's preference.

Players can also set their preferred language directly via command trigger:
```mcfunction
/trigger hh_select_lang set 1   # Русский (Russian)
/trigger hh_select_lang set 2   # English
/trigger hh_select_lang set 3   # Español (Spanish)
/trigger hh_select_lang set 4   # 简体中文 (Chinese)
/trigger hh_select_lang set 5   # Deutsch (German)
```

## 🎨 Custom Textures & Resource Pack Setup

This datapack is configured as a **hybrid Datapack + Resource Pack**. You can place or symlink the folder directly into your `.minecraft/resourcepacks/` directory and activate it in Minecraft's **Options ➔ Resource Packs** menu!

### 📂 Where to Place Your Custom Textures:
Put your 16×16 (or higher resolution) PNG images into:
```text
assets/half_heart/textures/item/
├── heart_shard.png      <-- Custom texture for Heart Shard
└── health_potion.png    <-- Custom texture for Health Restoration Potion
```

*(Pre-made 16×16 pixel art placeholder textures are already generated in these locations, ready to be replaced with your own artwork anytime!)*

### 🏗️ Resource Pack File Hierarchy:
Modern Minecraft (1.21.4+ / 26.2+) uses the `items/` definition system alongside `models/`:
```text
assets/
└── half_heart/
    ├── items/
    │   ├── heart_shard.json       (Item model definition)
    │   └── health_potion.json     (Item model definition)
    ├── models/
    │   └── item/
    │       ├── heart_shard.json   (Parent: minecraft:item/generated)
    │       └── health_potion.json (Parent: minecraft:item/generated)
    └── textures/
        └── item/
            ├── heart_shard.png    (Heart Shard texture)
            └── health_potion.png  (Health Potion texture)
```

---

## 📦 Compatibility & Technical Details

- **Supported Minecraft Versions:** Java Edition **1.21.2** up to **26.2+**.
- **Attribute Identifier:** Uses standard `minecraft:max_health` attribute with macro execution (`/attribute @s minecraft:max_health base set $(val)`).
- **Modded Health Compatibility:** Fully compatible with mods modifying initial player base health (e.g., Origins, Terralith). The datapack dynamically captures the player's true base health on their initial spawn.
- **Pack Format:** Configured with `pack_format: 48` and `supported_formats: [48, 125]`.
