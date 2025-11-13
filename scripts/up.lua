defineObject{
	name = "dungeon_up_wall_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_wall_2nd.fbx",
    replacesWall = false,
	placement = "wall",
	editorIcon = 92,
}
defineObject{
	name = "dungeon_up_wall_3nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_wall_3nd.fbx",
    replacesWall = false,
	placement = "wall",
	editorIcon = 92,
}
defineObject{
	name = "dungeon_up_wall_4nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_wall_4nd.fbx",
    replacesWall = false,
	placement = "wall",
	editorIcon = 92,
}
defineObject{
	name = "dungeon_pillar_door",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_pillar_door.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "dungeon_up_pillar_2nd_door",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pillar_2nd_door.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "dungeon_up_pillar_3nd_door",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pillar_3nd_door.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "dungeon_up_pillar_4nd_door",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pillar_4nd_door.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "dungeon_up_pillar_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pillar_2nd.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "dungeon_up_pillar_3nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pillar_3nd.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "dungeon_up_pillar_4nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pillar_4nd.fbx",
	placement = "pillar",
	editorIcon = 108,
}


defineObject{
   name = "dungeon_up_ceiling_2nd",
   class = "Decoration",
   model = "mod_assets/models/env/dungeon_up_ceiling_2nd.fbx",
   placement = "ceiling",
   editorIcon = 104,
}
defineObject{
   name = "dungeon_up_ceiling_4nd",
   class = "Decoration",
   model = "mod_assets/models/env/dungeon_up_ceiling_4nd.fbx",
   placement = "ceiling",
   editorIcon = 104,
}

defineObject{
	name = "dungeon_up_pit_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pit_2nd.fbx",
	placement = "ceiling",
	editorIcon = 104,
}
defineObject{
	name = "dungeon_up_pit_4nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_up_pit_4nd.fbx",
	placement = "ceiling",
	editorIcon = 104,
}
defineObject{
	name = "deep_dungeon_up_wall_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/deep_dungeon_up_wall_2nd.fbx",
    replacesWall = false,
	placement = "wall",
	editorIcon = 92,
}
defineObject{
   name = "deep_dungeon_up_ceiling_2nd",
   class = "Decoration",
   model = "mod_assets/models/env/deep_dungeon_up_ceiling_2nd.fbx",
   placement = "ceiling",
   editorIcon = 104,
}

defineObject{
   name = "deep_dungeon_up_pillar_2nd",
   class = "Decoration",
   model = "mod_assets/models/env/deep_dungeon_up_pillar_2nd.fbx",
   placement = "pillar",
   editorIcon = 108,
}

defineObject{
	name = "deep_dungeon_up_pit_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/deep_dungeon_up_pit_2nd.fbx",
	placement = "ceiling",
	editorIcon = 104,
}


defineObject{
   name = "deep_dungeon_torch_holder_up_2nd",
   class = "TorchHolder",
   model = "mod_assets/models/deep_dungeon/deep_dungeon_torch_holder_up.fbx",
   anchorPos = vec(0.05, 4.53, -0.25),
   anchorRotation = vec(0, -20, -90),
   placement = "wall",
   editorIcon = 84,
   }

defineObject{
	name = "torch_holder_2ndstory_light",
	class = "LightSource",
	lightPosition = vec(-0.015, 4.85, 1.1), -- 3d vector, origin of light source in entity’s local space.
	lightRange = 12,
	lightColor = vec(1, 0.5, 0.25), -- fireburst (0.75, 0.4, 0.25), fireball (1, 0.5, 0.25)
	brightness = 12,
--	castShadow = true,
	castShadow = false,
	particleSystem = "torch",
	placement = "floor",
	editorIcon = 88,
}
defineObject{
	name = "torch_holder_2ndstory_light_radiant",
	class = "LightSource",
	lightPosition = vec(0, 4.5, 0), -- 3d vector, origin of light source in entity’s local space.
	lightRange = 9,
	lightColor = vec(1, 0.7, 0.4),
	brightness = 8,
	castShadow = false,
	placement = "floor",
	editorIcon = 88,
}

defineObject{
	name = "temple_ceiling_lamp_high",
	class = "LightSource",
	lightPosition = vec(0, 6, 0),
	lightRange = 10,
	lightColor = vec(0.35, 0.98, 1.5),
	brightness = 11,
	castShadow = true,
	particleSystem = "prison_ceiling_lamp",
	placement = "floor",
	editorIcon = 88,
}
defineObject{
	name = "temple_ceiling_lamp_high_4nd",
	class = "LightSource",
	lightPosition = vec(0, 15, 0),
	lightRange = 10,
	lightColor = vec(0.35, 0.98, 1.5),
	brightness = 11,
	castShadow = true,
	particleSystem = "prison_ceiling_lamp",
	placement = "floor",
	editorIcon = 88,
}
defineObject{
   name = "deep_dungeon_ceiling_lamp_high",
   class = "LightSource",
   lightPosition = vec(0, 6, 0),
   lightRange = 12,
   lightColor = vec(0.43, 0.45, 0.45),
   brightness = 12,
   castShadow = true,
   particleSystem = false,
   placement = "floor",
   editorIcon = 88,
   }
   
   defineObject{
	name = "goromorg_fourway_dark_up",
    class = "Decoration",
	model = "mod_assets/models/env/goromorg_statue_fourway_dark_up.fbx",
	placement = "floor",
	editorIcon = 56,
}

defineObject{
	name = "dungeon_catacomb_up_empty_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_catacomb_up_empty_2nd.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}

defineObject{
	name = "dungeon_catacomb_up_skeleton_up_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_catacomb_up_skeleton_up_2nd.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}

defineObject{
	name = "dungeon_catacomb_up_skeleton_down_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_catacomb_up_skeleton_down_2nd.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}

defineObject{
	name = "deep_dungeon_catacomb_up_empty_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/deep_dungeon_catacomb_up_empty_2nd.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}

defineObject{
	name = "deep_dungeon_catacomb_up_skeleton_up_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/deep_dungeon_catacomb_up_skeleton_up_2nd.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}

defineObject{
	name = "deep_dungeon_catacomb_up_skeleton_down_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/deep_dungeon_catacomb_up_skeleton_down_2nd.fbx",
	placement = "wall",
	replacesWall = true,
	editorIcon = 92,
}

   defineObject{
	name = "goromorg_fourway_up",
    class = "Decoration",
	model = "mod_assets/models/env/goromorg_statue_fourway_up.fbx",
	placement = "floor",
	editorIcon = 56,
}

defineObject{
   name = "clean_dungeon_up_ceiling",
   class = "Decoration",
   model = "mod_assets/models/env/dungeon_ceiling_clean_up.fbx",
   placement = "ceiling",
   editorIcon = 104,
}
defineObject{
	name = "clean_dungeon_up_wall_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_wall_clean_up.fbx",
    replacesWall = false,
	placement = "wall",
	editorIcon = 92,
}

defineObject{
	name = "clean_dungeon_up_pillar_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_pillar_clean_up.fbx",
	placement = "pillar",
	editorIcon = 108,
}

defineObject{
	name = "clean_dungeon_up_pillar3_1",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_pillar3_clean_up1.fbx",
	placement = "pillar",
	editorIcon = 108,
}

defineObject{
	name = "clean_dungeon_up_pillar3_2",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_pillar3_clean_up2.fbx",
	placement = "pillar",
	editorIcon = 108,
}
defineObject{
	name = "clean_dungeon_secret_door_up",
	class = "Decoration",
	model = "mod_assets/models/env/clean_dungeon_secret_door_up.fbx",
    replacesWall = false,
	placement = "wall",
	editorIcon = 92,
}

defineObject{
    name = "dungeon_ceiling_up_roots_01_4nd",
    class = "Decoration",
    model = "mod_assets/models/env/dungeon_ceiling_up_roots_01_4nd.fbx",
    placement = "wall",
	editorIcon = 92,
}
defineObject{
    name = "dungeon_ceiling_up_roots_02_4nd",
    class = "Decoration",
    model = "mod_assets/models/env/dungeon_ceiling_up_roots_02_4nd.fbx",
    placement = "wall",
	editorIcon = 92,
}
defineObject{
    name = "dungeon_ceiling_up_roots_03_4nd",
    class = "Decoration",
    model = "mod_assets/models/env/dungeon_ceiling_up_roots_03_4nd.fbx",
    placement = "wall",
	editorIcon = 92,
}
defineObject{
    name = "dungeon_up_ivy_1",
    class = "Decoration",
    model = "mod_assets/models/env/dungeon_ivy_up_01.fbx",
    placement = "wall",
	editorIcon = 92,
}

defineObject{
    name = "dungeon_up_ivy_2",
    class = "Decoration",
    model = "mod_assets/models/env/dungeon_ivy_up_02.fbx",
    placement = "wall",
	editorIcon = 92,
}

defineObject{
	name = "clean_dungeon_up_pit_2nd",
	class = "Decoration",
	model = "mod_assets/models/env/dungeon_ceiling_pit_clean_up.fbx",
	placement = "ceiling",
	editorIcon = 104,
}