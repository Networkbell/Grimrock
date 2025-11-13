--To install, save this file in "mod_assets/script" and add import "mod_assets/scripts/clean_dungeon_wallset.lua" to the init.lua file.

defineWallSet{
	name = "clean_dungeon",
	randomFloorFacing = true,
	
	floors = {
		"mod_assets/models/cleanwall/dungeon_floor_clean_01.fbx", 5,
		"mod_assets/models/cleanwall/dungeon_floor_clean_02.fbx", 5,
		"mod_assets/models/cleanwall/dungeon_floor_clean_03.fbx", 5,
		"mod_assets/models/cleanwall/dungeon_floor_clean_04.fbx", 5,
		"mod_assets/models/cleanwall/dungeon_floor_clean_05.fbx", 5,
		"mod_assets/models/cleanwall/dungeon_floor_clean_06.fbx", 5,
		"mod_assets/models/cleanwall/dungeon_floor_drainage_clean.fbx", 1,
	},
	
	walls = {
		"mod_assets/models/cleanwall/dungeon_wall_clean_01.fbx", 50,
		"mod_assets/models/cleanwall/dungeon_wall_drainage_clean.fbx", 1,
	},
	
	pillars = {
		"mod_assets/models/cleanwall/dungeon_pillar_clean.fbx", 1,
	},

	ceilings = {
		"mod_assets/models/cleanwall/dungeon_ceiling_clean.fbx", 1,
	},
	
	ceilingShafts = {
		"mod_assets/models/cleanwall/dungeon_ceiling_pit_clean.fbx", 1,
	},

	floorDecorations = {
	},
	
	wallDecorations = {
		"assets/models/env/metal_hooks_wall.fbx", 1,
		"assets/models/env/metal_hooks_chain_wall.fbx", 1,
	},
	
	pillarDecorations = {
		"assets/models/env/metal_hook_pillar.fbx", 1,
		"assets/models/env/metal_hook_chain_pillar.fbx", 1,
		"assets/models/env/metal_ring_pillar.fbx", 1,
	},
}