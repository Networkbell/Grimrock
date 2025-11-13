-- "Deep Dungeon" is a modified copy of the "Dungeon" wall set from Legend of Grimrock
-- All original models, textures etc. used in this wall set are copyright (C) Almost Human Ltd.
-- All other content copyright (C) Daniv
-- For more details on using and redistributing these assets, please visit: http://www.grimrock.net/modding/modding-and-asset-usage-terms/

-- Version 1.1 created by Daniv
-- Last updated 24th January 2013



import "mod_assets/scripts/deep_dungeon_materials.lua"
import "mod_assets/scripts/deep_dungeon_objects.lua"



defineWallSet{
   name = "deep_dungeon",
   randomFloorFacing = true,
   floors = {
      "mod_assets/models/deep_dungeon/deep_dungeon_floor_01.fbx", 5,
      "mod_assets/models/deep_dungeon/deep_dungeon_floor_02.fbx", 5,
      "mod_assets/models/deep_dungeon/deep_dungeon_floor_03.fbx", 5,
      "mod_assets/models/deep_dungeon/deep_dungeon_floor_04.fbx", 5,
      "mod_assets/models/deep_dungeon/deep_dungeon_floor_05.fbx", 5,
      "mod_assets/models/deep_dungeon/deep_dungeon_floor_06.fbx", 5,
      "mod_assets/models/deep_dungeon/deep_dungeon_floor_drainage.fbx", 1,
      },
   walls = {
      "mod_assets/models/deep_dungeon/deep_dungeon_wall.fbx", 30,
      "mod_assets/models/deep_dungeon/deep_dungeon_wall_drainage.fbx", 1,
      },
   pillars = {
      "mod_assets/models/deep_dungeon/deep_dungeon_pillar.fbx", 1,
      },
   ceilings = {
      "mod_assets/models/deep_dungeon/deep_dungeon_ceiling.fbx", 1,
      },
   ceilingShafts = {
      "mod_assets/models/deep_dungeon/deep_dungeon_ceiling_shaft.fbx", 1,
      },
   floorDecorations = {
      },
   wallDecorations = {
      "mod_assets/models/deep_dungeon/deep_dungeon_metal_hooks_wall.fbx", 1,
      "mod_assets/models/deep_dungeon/deep_dungeon_metal_hooks_chain_wall.fbx", 1,
      },
   pillarDecorations = {
      "mod_assets/models/deep_dungeon/deep_dungeon_metal_hook_pillar.fbx", 1,
      "mod_assets/models/deep_dungeon/deep_dungeon_metal_hook_chain_pillar.fbx", 1,
      "mod_assets/models/deep_dungeon/deep_dungeon_metal_ring_pillar.fbx", 1,
      },
   }
