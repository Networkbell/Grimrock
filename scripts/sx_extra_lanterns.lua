-- Extra Lanterns pack for temple and dungeon tileset
-- created by Skuggasveinn
-- use as you see fit, give credit if you want to :)


-- Lightsource objects

-- Goromorg Lantern Light
-- place this object infront of your goromorg lantern and use the facing buttons in the editor to point to your goromorg lantern.
defineObject{
	name = "sx_goromorg_lantern_light",
	class = "LightSource",
	lightPosition = vec(0, 1.8, 1.1),
	lightRange = 10,
	lightColor = vec(1, 0.5, 0.25),
	brightness = 11,
	castShadow = true,
	particleSystem = "torch",
	placement = "floor",
	editorIcon = 88,
}

-- Floor Lantern Light
-- simply place this ontop of your floor lantern

defineObject{
	name = "sx_floor_lantern_light",
	class = "LightSource",
	lightPosition = vec(0, 0.5, 0),
	lightRange = 10,
	lightColor = vec(1, 0.5, 0.25),
	brightness = 11,
	castShadow = true,
	particleSystem = "sx_floor_lantern_light",
	placement = "floor",
	editorIcon = 88,
}

-- Particle system for Floor Lantern
-- same as torch but has been enlarged

defineParticleSystem{
	name = "sx_floor_lantern_light",
	emitters = {
		-- smoke
		{
			emissionRate = 5,
			emissionTime = 0,
			maxParticles = 50,
			boxMin = {-0.03, 0.1, -0.03},
			boxMax = { 0.03, 0.1,  0.03},
			sprayAngle = {0,30},
			velocity = {0.1,0.5},
			texture = "assets/textures/particles/smoke_01.tga",
			lifetime = {1,1.75},
			color0 = {0.15, 0.15, 0.15},
			opacity = 1,
			fadeIn = 0.5,
			fadeOut = 0.5,
			size = {0.6, 1.2},
			gravity = {0,0,0},
			airResistance = 0.1,
			rotationSpeed = 0.6,
			blendMode = "Translucent",
		},

		-- flames
		{
			emissionRate = 50,
			emissionTime = 0,
			maxParticles = 100,
			boxMin = {-0.03, -0.03, 0.03},
			boxMax = { 0.03, 0.03,  -0.03},
			sprayAngle = {0,10},
			velocity = {0.2, 1},
			texture = "assets/textures/particles/torch_flame.tga",
			frameRate = 35,
			frameSize = 64,
			frameCount = 16,
			lifetime = {0.25, 0.85},
			colorAnimation = true,
			color0 = {2, 2, 2},
			color1 = {1.0, 1.0, 1.0},
			color2 = {1.0, 0.5, 0.25},
			color3 = {1.0, 0.3, 0.1},
			opacity = 1,
			fadeIn = 0.15,
			fadeOut = 0.3,
			size = {0.70, 0.030},
			gravity = {0,0,0},
			airResistance = 1.0,
			rotationSpeed = 1,
			blendMode = "Additive",
			depthBias = -0.002,
		},

		-- glow
		{
			spawnBurst = true,
			emissionRate = 1,
			emissionTime = 0,
			maxParticles = 1,
			boxMin = {0,0,-0.1},
			boxMax = {0,0,-0.1},
			sprayAngle = {0,30},
			velocity = {0,0},
			texture = "assets/textures/particles/glow.tga",
			lifetime = {1000000, 1000000},
			colorAnimation = false,
			color0 = {0.23, 0.11, 0.08},
			opacity = 1,
			fadeIn = 0.1,
			fadeOut = 0.1,
			size = {2, 2},
			gravity = {0,0,0},
			airResistance = 1,
			rotationSpeed = 0,
			blendMode = "Additive",
			depthBias = -0.002,
		}
	}
}

-- Objects

defineObject{
	name = "sx_dungeon_goromorg_lantern",
	class = "Decoration",
	model = "mod_assets/models/sx_dungeon_goromorg_lantern.fbx",
	placement = "wall",
	replacesWall = true,
	statueBase = true,
	editorIcon = 8,
}

defineObject{
	name = "sx_dungeon_goromorg_dark_lantern",
	class = "Decoration",
	model = "mod_assets/models/sx_dungeon_goromorg_dark_lantern.fbx",
	placement = "wall",
	replacesWall = true,
	statueBase = true,
	editorIcon = 8,
}

defineObject{
	name = "sx_temple_goromorg_dark_lantern",
	class = "Decoration",
	model = "mod_assets/models/sx_temple_goromorg_dark_lantern.fbx",
	placement = "wall",
	replacesWall = true,
	statueBase = true,
	editorIcon = 8,
}

defineObject{
	name = "sx_temple_goromorg_lantern",
	class = "Decoration",
	model = "mod_assets/models/sx_temple_goromorg_lantern.fbx",
	placement = "wall",
	replacesWall = true,
	statueBase = true,
	editorIcon = 8,
}

defineObject{
	name = "sx_floor_lantern",
	class = "Altar",
	model = "mod_assets/models/sx_floor_lantern.fbx",
	onInsertItem = function(self, item)
	local allowed = {"somethingthatdoesntexist"}
	for i = 1, #allowed do
	if item.name == allowed[i] then
	return item.name == allowed[i] and self:getItemCount() == 0
	end
	end 
	end,
	placement = "floor",
	editorIcon = 52,
}

defineObject{
	name = "sx_floor_lantern_dark",
	class = "Altar",
	model = "mod_assets/models/sx_floor_lantern_dark.fbx",
	onInsertItem = function(self, item)
	local allowed = {"somethingthatdoesntexist"}
	for i = 1, #allowed do
	if item.name == allowed[i] then
	return item.name == allowed[i] and self:getItemCount() == 0
	end
	end 
	end,
	placement = "floor",
	editorIcon = 52,
}


