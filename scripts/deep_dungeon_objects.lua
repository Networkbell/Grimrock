-- "Deep Dungeon" is a modified copy of the "Dungeon" wall set from Legend of Grimrock
-- All original models, textures etc. used in this wall set are copyright (C) Almost Human Ltd.
-- All other content copyright (C) Daniv
-- For more details on using and redistributing these assets, please visit: http://www.grimrock.net/modding/modding-and-asset-usage-terms/

-- Version 1.1 created by Daniv
-- Last updated 24th January 2013



defineObject{
   name = "deep_dungeon_alcove",
   class = "Alcove",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_alcove.fbx",
   replacesWall = true,
   anchorPos = vec(0, 0.85, 0.2),
   targetPos = vec(0,1.3,0),
   targetSize = vec(0.6, 0.5, 0.6),
   placement = "wall",
   editorIcon = 8,
   }

defineObject{
   name = "deep_dungeon_altar",
   class = "Altar",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_altar.fbx",
   placement = "floor",
   editorIcon = 52,
   }

defineObject{
   name = "deep_dungeon_barrel_crate_block",
   class = "Blockage",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_barrel_crate_block.fbx",
   brokenModel = "mod_assets/models/deep_dungeon/deep_dungeon_barrel_crate_block_broken.fbx",
   placement = "floor",
   health = 30,
   evasion = -1000,
   hitSound = "barrel_hit",
   hitEffect = "hit_wood",
   editorIcon = 56,
   }

defineObject{
   name = "deep_dungeon_bench",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_bench.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_catacomb_empty",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_catacomb_empty.fbx",
   placement = "wall",
   replacesWall = true,
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_catacomb_skeleton_down",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_catacomb_skeleton_down.fbx",
   placement = "wall",
   replacesWall = true,
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_catacomb_skeleton_up",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_catacomb_skeleton_up.fbx",
   placement = "wall",
   replacesWall = true,
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_cave_in",
   class = "Blockage",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_cave_in.fbx",
   placement = "floor",
   repelProjectiles = true,
   hitSound = "impact_blade",
   editorIcon = 144,
   }

defineObject{
   name = "deep_dungeon_cave_in_ceiling",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_cave_in_ceiling.fbx",
   placement = "ceiling",
   editorIcon = 144,
   }

defineObject{
   name = "deep_dungeon_ceiling_lamp",
   class = "LightSource",
   lightPosition = vec(0, 3, 0),
   lightRange = 12,
   lightColor = vec(0.43, 0.45, 0.45),
   brightness = 12,
   castShadow = true,
   particleSystem = false,
   placement = "floor",
   editorIcon = 88,
   }

defineObject{
   name = "deep_dungeon_ceiling_root_1",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_ceiling_roots_01.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_ceiling_root_2",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_ceiling_roots_02.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_ceiling_root_3",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_ceiling_roots_03.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_ceiling_shaft",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_ceiling_shaft.fbx",
   placement = "ceiling",
   editorIcon = 104,
   }

defineObject{
   name = "deep_dungeon_daemon_head",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_daemon_head.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_daemon_head_eye_slots",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_daemon_head_puzzle.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_door_iron",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_door_iron.fbx",
   doorFrameModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_frame_wide.fbx",
   pullChainModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_pullchain.fbx",
   pullChainAnim = "assets/animations/env/door_pullchain.fbx",
   openSound = "gate_iron_open",
   closeSound = "gate_iron_close",
   lockSound = "gate_lock",
   killPillars = true,
   doubleDoor = true,
   openVelocity = 1.1,
   closeVelocity = -1.1,
   closeAcceleration = 0,
   placement = "wall",
   editorIcon = 16,
   }

defineObject{
   name = "deep_dungeon_door_metal",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_door_metal.fbx",
   doorFrameModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_frame.fbx",
   pullChainModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_pullchain.fbx",
   pullChainAnim = "assets/animations/env/door_pullchain.fbx",
   openSound = "gate_open",
   closeSound = "gate_close",
   lockSound = "gate_lock",
   killPillars = true,
   openVelocity = 1.3,
   closeVelocity = 0,
   closeAcceleration = -10,
   placement = "wall",
   editorIcon = 124,
   }

defineObject{
   name = "deep_dungeon_door_ornament",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_door_ornament.fbx",
   doorFrameModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_frame.fbx",
   pullChainModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_pullchain.fbx",
   pullChainAnim = "assets/animations/env/door_pullchain.fbx",
   openSound = "gate_open",
   closeSound = "gate_close",
   lockSound = "gate_lock",
   killPillars = true,
   openVelocity = 1.3,
   closeVelocity = 0,
   closeAcceleration = -10,
   placement = "wall",
   editorIcon = 124,
   }

defineObject{
   name = "deep_dungeon_door_portcullis",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_door_portcullis.fbx",
   doorFrameModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_frame.fbx",
   pullChainModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_pullchain.fbx",
   pullChainAnim = "assets/animations/env/door_pullchain.fbx",
   openSound = "gate_open",
   closeSound = "gate_close",
   lockSound = "gate_lock",
   killPillars = true,
   openVelocity = 1.3,
   closeVelocity = 0,
   closeAcceleration = -10,
   sparse = true,
   placement = "wall",
   editorIcon = 124,
   }

defineObject{
   name = "deep_dungeon_door_steel",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_door_steel.fbx",
   doorFrameModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_frame_wide.fbx",
   pullChainModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_pullchain.fbx",
   pullChainAnim = "assets/animations/env/door_pullchain.fbx",
   openSound = "gate_iron_open",
   closeSound = "gate_iron_close",
   lockSound = "gate_lock",
   killPillars = true,
   doubleDoor = true,
   openVelocity = 1.1,
   closeVelocity = -1.1,
   closeAcceleration = 0,
   placement = "wall",
   editorIcon = 16,
   }

defineObject{
   name = "deep_dungeon_door_wooden",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_door_wooden.fbx",
   doorFrameModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_frame.fbx",
   pullChainModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_pullchain.fbx",
   pullChainAnim = "assets/animations/env/door_pullchain.fbx",
   openSound = "gate_open",
   closeSound = "gate_close",
   lockSound = "gate_lock",
   killPillars = true,
   openVelocity = 1.3,
   closeVelocity = 0,
   closeAcceleration = -10,
   placement = "wall",
   editorIcon = 128,
   }

defineObject{
   name = "deep_dungeon_door_wooden_locked",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_door_wooden_locked.fbx",
   doorFrameModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_frame.fbx",
   pullChainModel = "mod_assets/models/deep_dungeon/deep_dungeon_door_pullchain.fbx",
   pullChainAnim = "assets/animations/env/door_pullchain.fbx",
   openSound = "gate_open",
   closeSound = "gate_close",
   lockSound = "gate_lock",
   killPillars = true,
   openVelocity = 1.3,
   closeVelocity = 0,
   closeAcceleration = -10,
   locked = true,
   lockPos = vec(0, 1.05, 0),
   lockSize = vec(100, 140),
   placement = "wall",
   editorIcon = 128,
   }

defineObject{
   name = "deep_dungeon_dragon_statue",
   class = "Blockage",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_dragon_statue.fbx",
   placement = "floor",
   repelProjectiles = true,
   hitSound = "impact_blade",
   editorIcon = 56,
   }

defineObject{
   name = "deep_dungeon_floor_corpse",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_floor_corpse.fbx",
   placement = "floor",
   editorIcon = 100,
   }

defineObject{
   name = "deep_dungeon_floor_dirt",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_floor_dirt.fbx",
   placement = "floor",
   editorIcon = 100,
   }

defineObject{
   name = "deep_dungeon_floor_drainage",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_floor_drainage.fbx",
   placement = "floor",
   replacesFloor = true,
   editorIcon = 136,
   }

defineObject{
   name = "deep_dungeon_gobelin",
   class = "WallTapestry",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_gobelin.fbx",
   brokenModel = "mod_assets/models/deep_dungeon/deep_dungeon_gobelin_torn.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_goromorg_fourway",
   class = "Blockage",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_goromorg_statue_fourway.fbx",
   placement = "floor",
   repelProjectiles = true,
   hitSound = "impact_blade",
   editorIcon = 56,
   }

defineObject{
   name = "deep_dungeon_goromorg_statue",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_goromorg_statue.fbx",
   placement = "wall",
   replacesWall = true,
   statueBase = true,
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_ivy_1",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_ivy_01.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_ivy_2",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_ivy_02.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_lever",
   class = "Lever",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_lever.fbx",
   activateAnim = "assets/animations/env/lever_down.fbx",
   deactivateAnim = "assets/animations/env/lever_up.fbx",
   placement = "wall",
   editorIcon = 12,
   }

defineObject{
   name = "deep_dungeon_lock",
   class = "Lock",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_lock.fbx",
   height = 1.375,
   placement = "wall",
   editorIcon = 20,
   }

defineObject{
   name = "deep_dungeon_lock_gear",
   class = "Lock",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_lock_gear.fbx",
   height = 1.375,
   placement = "wall",
   editorIcon = 20,
   }

defineObject{
   name = "deep_dungeon_lock_golden",
   class = "Lock",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_lock_golden.fbx",
   height = 1.375,
   placement = "wall",
   editorIcon = 20,
   }

defineObject{
   name = "deep_dungeon_lock_ornate",
   class = "Lock",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_lock_ornament.fbx",
   height = 1.375,
   placement = "wall",
   editorIcon = 20,
   }

defineObject{
   name = "deep_dungeon_lock_prison",
   class = "Lock",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_lock_prison.fbx",
   height = 1.375,
   placement = "wall",
   editorIcon = 20,
   }

defineObject{
   name = "deep_dungeon_lock_round",
   class = "Lock",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_lock_round.fbx",
   height = 1.375,
   placement = "wall",
   editorIcon = 20,
   }

defineObject{
   name = "deep_dungeon_pillar",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_pillar.fbx",
   placement = "pillar",
   editorIcon = 108,
   }

defineObject{
   name = "deep_dungeon_pit",
   class = "Pit",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_pit.fbx",
   trapDoorModel = "mod_assets/models/deep_dungeon/deep_dungeon_pit_trapdoor.fbx",
   openAnim = "assets/animations/env/temple_pit_trapdoor_open.fbx",
   closeAnim = "assets/animations/env/temple_pit_trapdoor_close.fbx",
   placement = "floor",
   editorIcon = 40,
   }

defineObject{
   name = "deep_dungeon_pressure_plate",
   class = "PressurePlate",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_pressure_plate.fbx",
   activateAnim = "assets/animations/env/temple_pressure_plate_down.fbx",
   deactivateAnim = "assets/animations/env/temple_pressure_plate_up.fbx",	
   placement = "floor",
   editorIcon = 0,
   }

defineObject{
   name = "deep_dungeon_receptor",
   class = "Receptor",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_spell_receptor.fbx",
   placement = "wall",
   editorIcon = 72,
   }

defineObject{
   name = "deep_dungeon_secret_button_large",
   class = "Button",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_secret_button_large.fbx",
   pressAnim = "assets/animations/env/dungeon_secret_button_large_press.fbx",
   replacesWall = true,
   placement = "wall",
   editorIcon = 12,
   }

defineObject{
   name = "deep_dungeon_secret_button_small",
   class = "Button",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_secret_button_small.fbx",
   pressAnim = "assets/animations/env/dungeon_secret_button_small_press.fbx",
   replacesWall = true,
   placement = "wall",
   editorIcon = 12,
   }

defineObject{
   name = "deep_dungeon_secret_door",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_secret_door.fbx",
   openSound = "wall_sliding",
   closeSound = "wall_sliding",
   lockSound = "wall_sliding_lock",
   openVelocity = 0.5,
   closeVelocity = -0.5,
   secretDoor = true,
   placement = "wall",
   editorIcon = 120,
   }

defineObject{
   name = "deep_dungeon_spider_eggs",
   class = "Blockage",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_spider_eggs.fbx",
   brokenModel = "mod_assets/models/deep_dungeon/deep_dungeon_spider_eggs_broken.fbx",
   placement = "floor",
   health = 30,
   evasion = -1000,
   hitSound = "spider_eggs_hit",
   hitEffect = "hit_goo",
   editorIcon = 56,
   }

defineObject{
   name = "deep_dungeon_stairs_down",
   class = "Stairs",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_stairs_down.fbx",
   down = true,
   editorIcon = 48,
   }

defineObject{
   name = "deep_dungeon_stairs_up",
   class = "Stairs",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_stairs_up.fbx",
   down = false,
   editorIcon = 44,
   }

defineObject{
   name = "deep_dungeon_torch_holder",
   class = "TorchHolder",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_torch_holder.fbx",
   anchorPos = vec(0.05, 1.53, -0.25),
   anchorRotation = vec(0, -20, -90),
   placement = "wall",
   editorIcon = 84,
   }

defineObject{
   name = "deep_dungeon_wall_button",
   class = "Button",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_button.fbx",
   pressAnim = "assets/animations/env/wall_button_press.fbx",
   placement = "wall",
   editorIcon = 12,
   }

defineObject{
   name = "deep_dungeon_wall_dirt_1",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_dirt_01.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_wall_dirt_2",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_dirt_02.fbx",
   placement = "wall",
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_wall_drainage",
   class = "Decoration",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_drainage.fbx",
   placement = "wall",
   replacesWall = true,
   editorIcon = 92,
   }

defineObject{
   name = "deep_dungeon_wall_grating",
   class = "Door",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_grating.fbx",
   openSound = "gate_open",
   closeSound = "gate_close",
   lockSound = "gate_lock",
   openVelocity = 1.3,
   closeVelocity = 0,
   closeAcceleration = -10,
   sparse = true,
   placement = "wall",
   editorIcon = 132,
   }

defineObject{
   name = "deep_dungeon_wall_text",
   class = "WallText",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_text.fbx",
   placement = "wall",
   replacesWall = true,
   editorIcon = 28,
   }

defineObject{
   name = "deep_dungeon_wall_text_long",
   class = "WallText",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_wall_text_long.fbx",
   placement = "wall",
   replacesWall = true,
   editorIcon = 28,
   }

   
   defineObject{
	name = "sx_deep_dungeon_goromorg_lantern",
	class = "Decoration",
	model = "mod_assets/models/deep_dungeon/sx_deep_dungeon_goromorg_lantern.fbx",
	placement = "wall",
	replacesWall = true,
	statueBase = true,
	editorIcon = 8,
}
cloneObject{
	name = "deep_dungeon_catacomb_secret_empty",
	baseObject = "dungeon_secret_door",
	model = "mod_assets/models/deep_dungeon/deep_dungeon_catacomb_secret_empty.fbx",

}

cloneObject{
	name = "deep_dungeon_catacomb_secret_skeleton_down",
	baseObject = "dungeon_secret_door",
	model = "mod_assets/models/deep_dungeon/deep_dungeon_catacomb_secret_skeleton_down.fbx",

}

cloneObject{
	name = "deep_dungeon_catacomb_secret_skeleton_up",
	baseObject = "dungeon_secret_door",
	model = "mod_assets/models/deep_dungeon/deep_dungeon_catacomb_secret_skeleton_up.fbx",

}

