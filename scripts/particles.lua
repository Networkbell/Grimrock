defineParticleSystem{
	name = "death_dust_loop",
	emitters = {
		{
			emissionRate = 30,
			emissionTime = 0,
			maxParticles = 400,
			boxMin = {-1.0, 0.0,-1.0},
			boxMax = { 1.0, 0.0, 1.0},
			sprayAngle = {0,50},
			velocity = {0.1,1},
			texture = "assets/textures/particles/fog.tga",
			lifetime = {2,3.5},
			color0 = {0.05, 0.05, 0.05},
			opacity = 1,
			fadeIn = 1,
			fadeOut = 1,
			size = {0.4, 0.8},
			gravity = {0,0,0},
			airResistance = 0.1,
			rotationSpeed = 0.6,
			blendMode = "Translucent",
		}
	}
}


defineObject{
   name = "lamp_ceiling_red",
   class = "LightSource",
   lightPosition = vec(0, 6, 0),
   lightRange = 2,
   lightColor = vec(1, 0, 0),
   brightness = 2,
   castShadow = true,
   particleSystem = false,
   placement = "floor",
   editorIcon = 88,
   }
   
   defineObject{
   name = "lamp_ceiling_yellow",
   class = "LightSource",
   lightPosition = vec(0, 6, 0),
   lightRange = 2,
   lightColor = vec(1, 1, 0),
   brightness = 2,
   castShadow = true,
   particleSystem = false,
   placement = "floor",
   editorIcon = 88,
   }
   
      defineObject{
   name = "lamp_ceiling_blue",
   class = "LightSource",
   lightPosition = vec(0, 6, 0),
   lightRange = 2,
   lightColor = vec(0, 0, 1),
   brightness = 2,
   castShadow = true,
   particleSystem = false,
   placement = "floor",
   editorIcon = 88,
   }
   
         defineObject{
   name = "lamp_ceiling_green",
   class = "LightSource",
   lightPosition = vec(0, 6, 0),
   lightRange = 2,
   lightColor = vec(0, 1, 0),
   brightness = 2,
   castShadow = true,
   particleSystem = false,
   placement = "floor",
   editorIcon = 88,
   }
   
   
   

  defineParticleSystem{
    name = "web",
    emitters = {
		{
			emissionRate = 1000,
			emissionTime = 0.1,
			maxParticles = 100,
			boxMin = {-1, 0,-1},
			boxMax = { 1, 0, 1},
			sprayAngle = {0,0},
			velocity = {0,0},
			texture = "assets/textures/props/spider_webs_dif.tga",
			lifetime = {8,8},
			color0 = {1, 1, 1},
			opacity = 0.9,
			fadeIn = 0.1,
			fadeOut = 1,
			size = {0,5},
			gravity = {0,0,0},
			airResistance = 0.1,
			rotationSpeed = 0,
			blendMode = "Translucent",
			objectSpace = false,
		}
    }
}

defineObject{
name = "fire_emitter",
class = "LightSource",
lightPosition = vec(1.2, 0.2, 0),
lightRange = 6,
lightColor = vec(2.8, 1.4, 1),
brightness = 20,
castShadow = true,
particleSystem = "fire",
placement = "floor",
editorIcon = 88,
}

defineObject{
name = "dust_emitter",
class = "LightSource",
lightPosition = vec(1.2, 0.2, 0),
lightRange = 6,
lightColor = vec(1, 1, 1),
brightness = 0,
castShadow = true,
particleSystem = "dust",
placement = "floor",
editorIcon = 88,
}

defineObject{
   name = "fog_emitter",
   class = "LightSource",
   lightPosition = vec(1.2, 0.2, 0),
   lightRange = 6,
   lightColor = vec(1, 1, 1),
   brightness = 0,
   castShadow = true,
   particleSystem = "fog",
   placement = "floor",
   editorIcon = 88,
}
   
   
  
defineObject{
    name = "spider_web_emitter",
    class = "LightSource",
    lightPosition = vec(1.2, 0.2, 0),
    lightRange = 6,
    lightColor = vec(1, 1, 1),
    brightness = 0,
    castShadow = true,
    particleSystem = "web",
    placement = "floor",
    editorIcon = 88,
}  


defineParticleSystem{
	name = "poison_cloud_particle",
	emitters = {
		-- blast
		{
			spawnBurst = true,
			emissionTime = 3,
			maxParticles = 15,
			boxMin = {-0.5, -0.4,-0.5},
			boxMax = { 0.5,  0.2, 0.5},
			sprayAngle = {0,360},
			velocity = {0.1,0.7},
			objectSpace = true,
			texture = "assets/textures/particles/poison_cloud.tga",
			lifetime = {1.5,1.5},
			color0 = {0.5, 0.5, 0.5},
			opacity = 1,
			fadeIn = 0.1,
			fadeOut = 1,
			size = {1.5, 5},
			gravity = {0,0,0},
			airResistance = 0.1,
			rotationSpeed = 0.5,
			blendMode = "Translucent",
		},

		-- fog
		{
			emissionRate = 15,
			emissionTime = 3,
			maxParticles = 1000,
			boxMin = {-1.2, -1.0,-1.2},
			boxMax = { 1.2,  0.5, 1.2},
			sprayAngle = {0,360},
			velocity = {0.1,0.7},
			objectSpace = true,
			texture = "assets/textures/particles/smoke_01.tga",
			lifetime = {2,2},
			color0 = {0.29, 0.29, 0.145},
			opacity = 0.8,
			fadeIn = 1,
			fadeOut = 1,
			size = {1.4, 5},
			gravity = {0,0,0},
			airResistance = 0.1,
			rotationSpeed = 0.1,
			blendMode = "Translucent",
		},

		-- fog
		{
			emissionRate = 5,
			emissionTime = 3,
			maxParticles = 1000,
			boxMin = {-1.2, -0.5,-1.2},
			boxMax = { 1.2,  0.5, 1.2},
			sprayAngle = {0,360},
			velocity = {0.1,0.3},
			objectSpace = true,
			texture = "assets/textures/particles/poison_cloud.tga",
			lifetime = {2,2},
			color0 = {1,1,1},
			opacity = 0.8,
			fadeIn = 1,
			fadeOut = 1,
			size = {1.4, 5},
			gravity = {0,0,0},
			airResistance = 0.1,
			rotationSpeed = 0.1,
			blendMode = "Translucent",
		},

		-- pollen
		{
			emissionRate = 400,
			emissionTime = 3,
			maxParticles = 1000,
			boxMin = {-1,-1.3,-1},
			boxMax = { 1, 0.8, 1},
			sprayAngle = {0,30},
			velocity = {0.5,1.0},
			objectSpace = true,
			texture = "assets/textures/particles/smoke_01.tga",
			lifetime = {1,1},
			color0 = {1.5,1.5,0.5},
			opacity = 0.15,
			fadeIn = 0.1,
			fadeOut = 0.3,
			size = {0.03, 0.05},
			gravity = {0,-1.2,0},
			airResistance = 0.1,
			rotationSpeed = 2,
			blendMode = "Additive",
		},
		
		-- glow
		{
			spawnBurst = true,
			emissionRate = 1,
			emissionTime = 3,
			maxParticles = 1,
			boxMin = {0,0,-0.1},
			boxMax = {0,0,-0.1},
			sprayAngle = {0,30},
			velocity = {0,0},
			texture = "assets/textures/particles/glow.tga",
			lifetime = {0.5, 0.5},
			colorAnimation = false,
			color0 = {0.1, 0.12, 0.1},
			opacity = 1,
			fadeIn = 0.01,
			fadeOut = 0.5,
			size = {2, 5},
			gravity = {0,0,0},
			airResistance = 1,
			rotationSpeed = 2,
			blendMode = "Additive",
		}
	}
}

defineObject{
    name = "poison_cloud_emitter",
    class = "LightSource",
    lightPosition = vec(1.2, 0.2, 0),
    lightRange = 6,
    lightColor = vec(1, 1, 1),
    brightness = 0,
    castShadow = true,
    particleSystem = "poison_cloud_particle",
    placement = "floor",
    editorIcon = 88,
}  
   