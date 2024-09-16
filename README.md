# YoSR
Originally LingshaRail, now renamed and republished with *cleaner code* and a bit more features.

## Why are the protos and cmdid missing?
Sorry, get them and [compile](https://github.com/mransan/ocaml-protoc?tab=readme-ov-file) them yourself.

I have provided the build scripts in the factory directory so you can build them easily.

## What's different?
- [yo.json](https://github.com/yuvlian/YoSR/blob/main/gameserver/yo.json)
  - A JSON file that's used for lineup, battle, etc.

- [generator.html](https://f2pqingque.github.io/yo/generator.html)
   - A page for generating yo.json. Not that great but oh well.

- [json_showcase.py](https://f2pqingque.github.io/yo/json_showcase.py)
  - Python script to generate an image of yo.json as a table.
  
- [utility.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/utility.ml)
  - Collection of convenient stuff used across many handlers.

- [jsontypes.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/jsontypes.ml)
  - Structs for yo.json deserializing.

- [idutil.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/idutil.ml)
  - Utility for getting IDs of characters, relics, relic affixes, and lightcones.

- [config.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/config.ml)
  - Handler for yo.json configuration.

- [avatar.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/handlers/avatar.ml)
  - Made it support multi path avatars from JSON.

- [battle.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/handlers/battle.ml)
  - See for yourself.

- [lineup.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/handlers/lineup.ml)
  - Made it use lineup from characters in the JSON.

- [scene.ml](https://github.com/yuvlian/YoSR/blob/main/gameserver/bin/handlers/scene.ml)
  - Unnested some stuff I guess.