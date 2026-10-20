# Minecraft Datapacks Monorepo

Монорепозиторий для датапаков и ресурспаков Minecraft.
Репозиторий разделен на ветки по поддерживаемым версиям Minecraft:

- [`26+`](https://github.com/accrrsd/minecraft-datapacks-monorepo/tree/26+) — Minecraft 26+ (Data Pack format `121`, Resource Pack format `97`)
- [`1.21.5`](https://github.com/accrrsd/minecraft-datapacks-monorepo/tree/1.21.5) — Minecraft 1.21.5 (Data Pack format `71`, Resource Pack format `46`)
- [`1.21.1`](https://github.com/accrrsd/minecraft-datapacks-monorepo/tree/1.21.1) — Minecraft 1.21 - 1.21.1 (Data Pack format `48`, Resource Pack format `46`)

## Структура каждого пакета

Внутри каждой ветки каждый датапак представлен отдельной папкой в корне:

```text
├── CoreTools/
│   ├── CoreTools_datapack/
│   └── CoreTools_resourcepack/
├── dd_discs/
│   ├── dd_discs_datapack/
│   └── dd_discs_resourcepack/
├── leaving-heart-behind/
│   ├── leaving_heart_behind_datapack/
│   └── leaving_heart_behind_resourcepack/
├── invisible-item-frame/
│   └── invisible_item_frame_datapack/
├── renewable-calcite-tuff-deepslate/
│   └── renewable_calcite_tuff_deepslate_datapack/
├── renewable-oxydation-and-concrete/
│   └── renewable_oxydation_and_concrete_datapack/
└── renewable-sand-gravel/
    └── renewable_sand_gravel_datapack/
```

Датапаки, требующие кастомные модели и текстуры (`CoreTools`, `dd_discs`, `leaving-heart-behind`), содержат две подпапки (`*_datapack` и `*_resourcepack`).
Датапаки только с рецептами или механизмами содержат соответствующую папку `*_datapack`.
