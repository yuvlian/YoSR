# YoSR
Originally LingshaRail, now renamed and republished with *cleaner code*.

## Why are the protos and cmdid missing?
Sorry, get them and [compile](https://github.com/mransan/ocaml-protoc?tab=readme-ov-file#install-and-build) them yourself.

If you did that and you don't know where to place them, you can check the .gitignore file.

## What's different?
- `/gameserver/yo.json`
  - The main thing about this server reimplementation.

- `/gameserver/yo_json_generator.html`
   - Self explanatory.

- `/gameserver/json_table.py`
  - Generate image of yo.json as a table.
  
- `/gameserver/bin/utility.ml`
  - Convenient functions used across many handlers.

- `/gameserver/bin/jsontypes.ml`
  - The yo.json structs.

- `/gameserver/bin/idutil.ml`
  - Utility for available characters, relics, and lightcones alongside their IDs.

- `/gameserver/bin/config.ml`
  - Handler for yo.json configuration.

- `/gameserver/bin/handlers/avatar.ml`
  - Made it support multi path avatars from JSON.

- `/gameserver/bin/handlers/battle.ml`
  - See for yourself.

- `/gameserver/bin/handlers/lineup.ml`
  - Made it support lineup from JSON.

- `/gameserver/bin/handlers/scene.ml`
  - Undid many nesting.