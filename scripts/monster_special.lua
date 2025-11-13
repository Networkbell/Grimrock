cloneObject{
	name = "skeleton_ghost_door",
	baseObject = "skeleton_warrior",
	model = "mod_assets/pandafox_assets/skeleton_ghost/model/skeleton_ghost.fbx",
	lightName = "hip",
	lightColor = vec(0.3, 0.3, 0.4),
	lightBrightness = 20,
	lightRange = 1.5,
	allAroundSight = true,
	seeInvisible = true,
	flying = true,
	turnAnimSpeed = 2,
	--attackAnimSpeed = 5,	
	capsuleHeight = 0.7,
	capsuleRadius = 0.25,
	collisionRadius = 0.6,
	health = 180,
	sight = 4,
	attackPower = 20,
	accuracy = 10,
	protection = 9,
	evasion=0,
	immunities = { "poison", "fire", "cold", "assassination", "backstab"  },
	movementCoolDown = 2,
	exp = 125,
	healthIncrement = 15,
	attackPowerIncrement = 5,
	protectionIncrement = 1,
	particleSystem = "ghostsk",
	particleSystemNode = "head",
	onDie = function(self)
      local s = ghost_kill_counter
      local sl = script_entity_2
      s:increment()
      sl:ghostopendoor()
   end,
}


cloneObject{
   name = "herder_door",
   baseObject = "herder",
      onDie = function(self)
      local s = herderkillcounter
      local sl = script_entity_1
      s:increment()
      sl:herderopendoor()
   end,
}


cloneObject{
   name = "herder_s_noxp",
   baseObject = "herder_small",
   model = "mod_assets/models/herder_small_noxp.fbx",
     exp = 0,
   onDie = function(self, dir)
      for i=1,4 do
      party:getChampion(i):gainExp(0)
      end
	  local u = enigme_15
      local ul = script_enigme_text_1
      u:increment()
      ul:enigmeh()
   end,
}


cloneObject{
   name = "skeleton_archer_noxp",
   baseObject = "skeleton_archer",
	model = "mod_assets/models/skeleton_archer_noxp.fbx",	
	
	exp = 0,
   onDie = function(self, dir)
      for i=1,4 do
      party:getChampion(i):gainExp(0)
      end
	  local e64 = enigme_64
      local er64 = script_enigme_text_3
      e64:increment()
      er64:enigmeba()
   end,
	
}



defineAiSwitchMonster{
	name = "spider_low_gorom",
	class = "Monster",
	model = "mod_assets/models/spider_low.fbx",
	meshName = "spider_mesh",
	animations = {
		idle = "assets/animations/monsters/spider/spider_idle.fbx",
		moveForward = "assets/animations/monsters/spider/spider_walk.fbx",
		turnLeft = "assets/animations/monsters/spider/spider_turn_left.fbx",
		turnRight = "assets/animations/monsters/spider/spider_turn_right.fbx",
		attack = "assets/animations/monsters/spider/spider_bite.fbx",
		getHitFrontLeft = "assets/animations/monsters/spider/spider_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/spider/spider_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/spider/spider_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/spider/spider_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/spider/spider_get_hit_right.fbx",
		fall = "assets/animations/monsters/spider/spider_get_hit_front_left.fbx",
	},
	moveSound = "spider_walk",
	attackSound = "spider_attack",
	hitSound = "spider_hit",
	dieSound = "spider_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.8,
	health = 190,
	sight = 7,
	attackPower = 28,
	accuracy = 10,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 200,
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	onDealDamage = [[function(self, champion, damage)
		if math.random() <= 0.3 then
			champion:setConditionCumulative("poison", 30)
		end
	end]],
	onDamage = [[function(self, damage, damageType)

         local dh = exsp.damageHandler
         if dh.onDamageFilter[self.id] then
            if dh.onDamageFilter[self.id] ~= "freezeMonster" then
               local id = dh.onDamageFilter[self.id]
               local spell = exsp.sd[id]
               if spell.name ~= "ice_shards" then
                  dh.monsterGroupCtr[spell.id] = dh.monsterGroupCtr[spell.id] + 1
                  if dh.monsterGroupCtr[spell.id] == dh.monsterGroup[spell.id] then
                     spell:onHitHook("monster", nil, dh.monsterGroupTable[spell.id], "monster")
                  end
               end
            end
            return false
         elseif extend:entity(self):isInvulnerable() then
            return false
         end
      
		if (damageType == "poison") then
			return false
		end
	end]],	
	
	
	onProjectileHit = [[function(self, projectile)
		if (projectile.name == "spider_web") then
			return false;
		end
	end]],
	onDie = [[function(self)
      local gorom = count_gorom
	  local script_gorom = script_seq_goromog
      gorom:decrement()
	  script_gorom:spiderseqtwo()	  
   end]],
	brains = 
	{
		{	
			-- Check if party is in direct distance 2 and nobody is paralyzed yet
			condition = [[function(m)
				local distance = math.abs(m.x - party.x) + math.abs(m.y - party.y)
				local directdistance = (m.x == party.x) or (m.y == party.y)
				
				if (not directdistance) or (distance ~= 2) then
					return false;
				end
				
				local isparalyzed = false;
				for i = 1, 4 do 
					if (party:getChampion(i):getCondition("paralyzed") > 0) then
						isparalyzed = true;
						break;
					end
				end
				return not isparalyzed;
			end]],
			animations = { attack = "mod_assets/animations/spider_shoot.fbx" },
			rangedAttack = "poison_bolt",
			brain = "Ranged",
			-- override ranged attack for this monster! Note the hook is a string
			onRangedAttack = [[function(self)
				local x, z = getForward(self.facing)
				shootProjectile("spider_web", self.level, self.x, self.y, self.facing, 9.0, 7.0, 0.1, -x, 0.7, z, 10, self, true);
				return false;
			end]],
			onPartyProjectileHit = [[function(champ, proj, damage, damtype)
				if (proj.name == "spider_web") then
					party:playScreenEffect("web")
					for i = 1, 4 do 
						party:getChampion(i):setConditionCumulative("paralyzed", 8);
					end
					return false;
				end
			end]],					
		},
	},	
}



--Spider LVL 3
defineAiSwitchMonster{
	name = "spider_medium_gorom",
	class = "Monster",
	model = "mod_assets/models/spider_medium.fbx",
	meshName = "spider_mesh",
	animations = {
		idle = "assets/animations/monsters/spider/spider_idle.fbx",
		moveForward = "assets/animations/monsters/spider/spider_walk.fbx",
		turnLeft = "assets/animations/monsters/spider/spider_turn_left.fbx",
		turnRight = "assets/animations/monsters/spider/spider_turn_right.fbx",
		attack = "assets/animations/monsters/spider/spider_bite.fbx",
		getHitFrontLeft = "assets/animations/monsters/spider/spider_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/spider/spider_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/spider/spider_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/spider/spider_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/spider/spider_get_hit_right.fbx",
		fall = "assets/animations/monsters/spider/spider_get_hit_front_left.fbx",
	},
	moveSound = "spider_walk",
	attackSound = "spider_attack",
	hitSound = "spider_hit",
	dieSound = "spider_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.8,
	health = 220,
	sight = 6,
	attackPower = 33,
	accuracy = 10,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 225,
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	onDealDamage = [[function(self, champion, damage)
		if math.random() <= 0.3 then
			champion:setConditionCumulative("poison", 30)
		end
	end]],
	onDamage = [[function(self, damage, damageType)

         local dh = exsp.damageHandler
         if dh.onDamageFilter[self.id] then
            if dh.onDamageFilter[self.id] ~= "freezeMonster" then
               local id = dh.onDamageFilter[self.id]
               local spell = exsp.sd[id]
               if spell.name ~= "ice_shards" then
                  dh.monsterGroupCtr[spell.id] = dh.monsterGroupCtr[spell.id] + 1
                  if dh.monsterGroupCtr[spell.id] == dh.monsterGroup[spell.id] then
                     spell:onHitHook("monster", nil, dh.monsterGroupTable[spell.id], "monster")
                  end
               end
            end
            return false
         elseif extend:entity(self):isInvulnerable() then
            return false
         end
      
		if (damageType == "poison") then
			return false
		end
	end]],	
	onProjectileHit = [[function(self, projectile)
		if (projectile.name == "spider_web") then
			return false;
		end
	end]],
		onDie = [[function(self)
      local gorombis = count_gorom_bis
	  local script_gorom_bis = script_seq_goromog
      gorombis:decrement()
	  script_gorom_bis:spiderseqthree()	  
   end]],
	brains = 
	{
		{	
			-- Check if party is in direct distance 2 and nobody is paralyzed yet
			condition = [[function(m)
				local distance = math.abs(m.x - party.x) + math.abs(m.y - party.y)
				local directdistance = (m.x == party.x) or (m.y == party.y)
				
				if (not directdistance) or (distance ~= 2) then
					return false;
				end
				
				local isparalyzed = false;
				for i = 1, 4 do 
					if (party:getChampion(i):getCondition("paralyzed") > 0) then
						isparalyzed = true;
						break;
					end
				end
				return not isparalyzed;
			end]],
			animations = { attack = "mod_assets/animations/spider_shoot.fbx" },
			rangedAttack = "poison_bolt",
			brain = "Ranged",
			-- override ranged attack for this monster! Note the hook is a string
			onRangedAttack = [[function(self)
				local x, z = getForward(self.facing)
				shootProjectile("spider_web", self.level, self.x, self.y, self.facing, 9.0, 7.0, 0.1, -x, 0.7, z, 10, self, true);
				return false;
			end]],
			onPartyProjectileHit = [[function(champ, proj, damage, damtype)
				if (proj.name == "spider_web") then
					party:playScreenEffect("web")
					for i = 1, 4 do 
						party:getChampion(i):setConditionCumulative("paralyzed", 8);
					end
					return false;
				end
			end]],					
		},
		{	-- will change to this brain when the monster is distance 3 to infinite from the party
			condition = { "distance", 3, 99999 },
			animations = { attack = "mod_assets/animations/spider_shoot.fbx" },
			rangedAttack = "poison_bolt",
			brain = "Ranged",
		},	
	},	
}