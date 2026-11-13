# Renewable Oxidation & Concrete (Copper & Concrete Hydration)

A lightweight vanilla-friendly Minecraft datapack that enhances copper mechanics and concrete crafting with logical, quality-of-life recipes.

---

## ✨ Features

### 💧 1. Hydration Recipes (Water Bucket)
Skip the tedious waiting and water-placement steps:
* **Concrete Solidification**: Combine **8 Concrete Powder** (any color) + **1 Water Bucket** to instantly craft **8 Concrete**.
* **Copper Oxidation**: Combine **8 Copper blocks or items** + **1 Water Bucket** to advance them to the next oxidation stage:
  * *Unaffected* ➔ *Exposed* ➔ *Weathered* ➔ *Oxidized*

---

### ⚡ 2. Direct Crafting from Oxidized Copper
In vanilla Minecraft, items normally made from copper ingots (such as lightning rods, bars, chains, and chests) cannot be crafted in weathered states because oxidized ingots do not exist. This pack solves that!

You can now craft them directly from copper blocks of matching oxidation stages:
* **Lightning Rods**: 3 Copper Blocks (vertical column) ➔ **9 Lightning Rods** of the matching stage (*lossless ratio: 3 blocks = 27 ingots = 9 rods*).
* **Copper Bars**: 6 Copper Blocks (2x3 pattern) ➔ **64 Copper Bars** of the matching stage.
* **Copper Chests**: 8 Copper Blocks around a Chest ➔ **1 Copper Chest** of the matching stage.
* **Copper Chains**: 1 Copper Block with 1 Iron Nugget above and below ➔ **9 Copper Chains** of the matching stage.

---

### 🪓 3. De-oxidation / Scraping with Iron Nuggets
Scrape off oxidation without placing blocks down!
* **1 Copper Item** + **1 Iron Nugget** (shapeless) ➔ **1 Item of the previous oxidation stage** (closer to clean copper):
  * *Oxidized* ➔ *Weathered*
  * *Weathered* ➔ *Exposed*
  * *Exposed* ➔ *Clean / Unaffected Copper*

---

### 🐝 4. Wax Removal with Iron Nuggets
Need to un-wax a copper item without placing it down and using an axe?
* **1 Waxed Copper Item** + **1 Iron Nugget** (shapeless) ➔ **1 Unwaxed Item** (retains its current oxidation stage).

---

## 🧱 Supported Copper Items & Families

All scraping, de-waxing, and hydration mechanics fully support all **15 copper families**:
* **Blocks of Copper** (`copper_block`)
* **Cut Copper** (`cut_copper`), **Stairs** (`cut_copper_stairs`), and **Slabs** (`cut_copper_slab`)
* **Chiseled Copper** (`chiseled_copper`)
* **Copper Grates** (`copper_grate`)
* **Copper Bulbs** (`copper_bulb`)
* **Copper Doors** (`copper_door`) & **Trapdoors** (`copper_trapdoor`)
* **Lightning Rods** (`lightning_rod`)
* **Copper Bars** (`copper_bars`)
* **Copper Chains** (`copper_chain`)
* **Copper Chests** (`copper_chest`)
* **Copper Lanterns** (`copper_lantern`)
* **Copper Golem Statues** (`copper_golem_statue`)

---

## 📖 Recipe Book Integration
Every single recipe comes with matching advancement criteria. Recipes unlock automatically in your Recipe Book as soon as you pick up any relevant ingredient!

---

## 📦 Installation
1. Download the datapack ZIP (or place the folder directly into your world's `datapacks` directory).
2. Type `/reload` or restart your world/server.
3. Enjoy!