--to install: copy the folder "cleanwall" found in the models folder of this pack to your mod_assets/models folder.
--copy this .lua file to your mod_assets/scripts folder and add it to the init.lua with the line: import "mod_assets/scripts/clean_dungeon_objects.lua"

defineObject{
	name = "clean_dungeon_pillar",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/dungeon_pillar_clean.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "clean_dungeon_pillar2",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/dungeon_pillar2_clean.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "clean_dungeon_pillar3",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/dungeon_pillar3_clean.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "cleanwall_symbol1",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol01.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "cleanwall_symbol2",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol2.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "cleanwall_symbol3",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol3.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "cleanwall_symbol4",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol4.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "cleanwall_symbol5",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol5.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "cleanwall_symbol6",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol6.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "cleanwall_symbol7",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol7.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "cleanwall_symbol8",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_wall_symbol8.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "clean_dungeon_catacomb_empty",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_dungeon_catacomb_empty.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "clean_dungeon_catacomb_skeleton_down",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_dungeon_catacomb_skeleton_down.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "clean_dungeon_catacomb_skeleton_up",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_dungeon_catacomb_skeleton_up.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}
defineObject{
	name = "clean_dungeon_cave_in_ceiling",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_dungeon_cave_in_ceiling.fbx",
	placement = "ceiling",
	editorIcon = 104,
}
defineObject{
	name = "clean_dungeon_door_wooden",
	class = "Door",
	model = "assets/models/env/door_wooden.fbx",
	doorFrameModel = "mod_assets/models/cleanwall/clean_dungeon_door_frame.fbx",
	pullChainModel = "assets/models/env/door_pullchain.fbx",
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
	name = "clean_dungeon_door_portcullis",
	class = "Door",
	model = "assets/models/env/door_portcullis.fbx",
	doorFrameModel = "mod_assets/models/cleanwall/clean_dungeon_door_frame.fbx",
	pullChainModel = "assets/models/env/door_pullchain.fbx",
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
	name = "clean_dungeon_door_wooden_locked",
	class = "Door",
	model = "assets/models/env/door_wooden_locked.fbx",
	doorFrameModel = "mod_assets/models/cleanwall/clean_dungeon_door_frame.fbx",
	pullChainModel = "assets/models/env/door_pullchain.fbx",
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
	name = "clean_dungeon_door_iron",
	class = "Door",
	model = "assets/models/env/door_iron.fbx",
	doorFrameModel = "mod_assets/models/cleanwall/clean_dungeon_door_frame_wide.fbx",
	pullChainModel = "assets/models/env/door_pullchain.fbx",
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
	name = "clean_dungeon_door_metal",
	class = "Door",
	model = "assets/models/env/door_metal.fbx",
	doorFrameModel = "mod_assets/models/cleanwall/clean_dungeon_door_frame.fbx",
	pullChainModel = "assets/models/env/door_pullchain.fbx",
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
	name = "clean_dungeon_door_ornament",
	class = "Door",
	model = "assets/models/env/door_ornament.fbx",
	doorFrameModel = "mod_assets/models/cleanwall/clean_dungeon_door_frame.fbx",
	pullChainModel = "assets/models/env/door_pullchain.fbx",
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
	name = "clean_dungeon_goromorg_statue",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_dungeon_goromorg_statue.fbx",
	placement = "wall",
	replacesWall = true,
	statueBase = true,
	editorIcon = 92,
}
defineObject{
	name = "clean_dungeon_pit",
	class = "Pit",
	model = "mod_assets/models/cleanwall/clean_dungeon_pit.fbx",
	trapDoorModel = "assets/models/env/dungeon_pit_trapdoor.fbx",
	openAnim = "assets/animations/env/dungeon_pit_trapdoor_open.fbx",
	closeAnim = "assets/animations/env/dungeon_pit_trapdoor_close.fbx",
	placement = "floor",
	editorIcon = 40,
}
defineObject{
	name = "clean_dungeon_stairs_down",
	class = "Stairs",
	model = "mod_assets/models/cleanwall/clean_dungeon_stairs_down.fbx",
	down = true,
	editorIcon = 48,
}

defineObject{
	name = "clean_dungeon_stairs_up",
	class = "Stairs",
	model = "mod_assets/models/cleanwall/clean_dungeon_stairs_up.fbx",
	down = false,
	editorIcon = 48,
}
defineObject{
	name = "clean_dungeon_secret_button_large",
	class = "Button",
	model = "mod_assets/models/cleanwall/clean_dungeon_secret_button_large.fbx",
	pressAnim = "assets/animations/env/dungeon_secret_button_large_press.fbx",
	replacesWall = true,
	placement = "wall",
	editorIcon = 12,
}
defineObject{
	name = "clean_dungeon_pressure_plate",
	class = "PressurePlate",
	model = "mod_assets/models/cleanwall/clean_dungeon_pressure_plate.fbx",
	activateAnim = "assets/animations/env/dungeon_pressure_plate_down.fbx",
	deactivateAnim = "assets/animations/env/dungeon_pressure_plate_up.fbx",	
	placement = "floor",
	editorIcon = 0,
}
defineObject{
	name = "clean_dungeon_secret_button_small",
	class = "Button",
	model = "mod_assets/models/cleanwall/clean_dungeon_secret_button_small.fbx",
	pressAnim = "assets/animations/env/dungeon_secret_button_small_press.fbx",
	replacesWall = true,
	placement = "wall",
	editorIcon = 12,
}
defineObject{
	name = "clean_dungeon_secret_door",
	class = "Door",
	model = "mod_assets/models/cleanwall/clean_dungeon_secret_door.fbx",
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
	name = "clean_dungeon_alcove",
	class = "Alcove",
	model = "mod_assets/models/cleanwall/clean_dungeon_wall_alcove.fbx",
	replacesWall = true,
	anchorPos = vec(0, 0.85, 0.2),
	targetPos = vec(0,1.3,0),
	targetSize = vec(0.6, 0.5, 0.6),
	placement = "wall",
	editorIcon = 8,
}
defineObject{
	name = "clean_dungeon_wall_grating",
	class = "Door",
	model = "mod_assets/models/cleanwall/clean_dungeon_wall_grating.fbx",
	openSound = "gate_open",
	closeSound = "gate_close",
	lockSound = "gate_lock",
	openVelocity = 1.3,
	closeVelocity = 0,
	closeAcceleration = -10,
	sparse = true,
	secretDoor = true,
	placement = "wall",
	editorIcon = 132,
}
defineObject{
	name = "clean_dungeon_wall_text",
	class = "WallText",
	model = "mod_assets/models/cleanwall/clean_dungeon_wall_text.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 28,
}
defineObject{
	name = "clean_dungeon_wall_text_long",
	class = "WallText",
	model = "mod_assets/models/cleanwall/clean_dungeon_wall_text_long.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 28,
}
defineObject{
	name = "clean_daemon_head",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_daemon_head.fbx",
	placement = "wall",
	editorIcon = 92,
}
defineObject{
   	 name = "clean_dungeon_gladiator_statue_axe",
 	 class = "Decoration",
   	 model = "mod_assets/models/cleanwall/clean_dungeon_gladiator_statue_battle_axe.fbx",
   	 placement = "wall",
	 replacesWall = true,
	 statueBase = true,
	 editorIcon = 92,
}
defineObject{
   	 name = "clean_dungeon_gladiator_statue_dismantler",
 	 class = "Decoration",
   	 model = "mod_assets/models/cleanwall/clean_dungeon_gladiator_statue_dismantler.fbx",
   	 placement = "wall",
	 replacesWall = true,
	 statueBase = true,
	 editorIcon = 92,
}
defineObject{
   	 name = "clean_dungeon_gladiator_statue_flail",
 	 class = "Decoration",
   	 model = "mod_assets/models/cleanwall/clean_dungeon_gladiator_statue_flail.fbx",
   	 placement = "wall",
	 replacesWall = true,
	 statueBase = true,
	 editorIcon = 92,
}
defineObject{
   	 name = "clean_dungeon_gladiator_statue_spear",
 	 class = "Decoration",
   	 model = "mod_assets/models/cleanwall/clean_dungeon_gladiator_statue_spear.fbx",
   	 placement = "wall",
	 replacesWall = true,
	 statueBase = true,
	 editorIcon = 92,
}

defineObject{
	name = "clean_dungeon_wall",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/dungeon_wall_clean_01.fbx",
    replacesWall = false,
	placement = "wall",
	editorIcon = 92,
}

defineObject{
   name = "clean_dungeon_ceiling",
   class = "Decoration",
   model = "mod_assets/models/cleanwall/dungeon_ceiling_clean.fbx",
   placement = "ceiling",
   editorIcon = 104,
}

defineObject{
	name = "clean_daemon_head_eye_slots",
	class = "Decoration",
	model = "mod_assets/models/cleanwall/clean_demon_head_puzzle.fbx",
	placement = "wall",
	editorIcon = 92,
}