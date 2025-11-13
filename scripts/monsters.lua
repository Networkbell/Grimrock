defineAnimationEvent{
	animation = "mod_assets/animations/spider_shoot.fbx",
	event = "ranged_attack",
	frame = 12,
}
defineAnimationEvent{
	animation = "mod_assets/animations/scavenger_shoot.fbx",
	event = "ranged_attack",
	frame = 12,
}
defineAnimationEvent{
	animation = "mod_assets/animations/snail_shoot.fbx",
	event = "ranged_attack",
	frame = 12,
}

defineAiSwitcherProjectileReplacement("spider_web");
defineAiSwitcherProjectileReplacement("snail_projectile");
defineAiSwitcherProjectileReplacement("egg_poison");

---------
--SNAIL--
---------

fw_defineObject{
	name = "snail",
	class = "Monster",
	model = "assets/models/monsters/snail.fbx",
	meshName = "snail_mesh",
	animations = {
		idle = "assets/animations/monsters/snail/snail_idle.fbx",
		moveForward = "assets/animations/monsters/snail/snail_walk.fbx",
		turnLeft = "assets/animations/monsters/snail/snail_turn_left.fbx",
		turnRight = "assets/animations/monsters/snail/snail_turn_right.fbx",
		attack = "assets/animations/monsters/snail/snail_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/snail/snail_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/snail/snail_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/snail/snail_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/snail/snail_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/snail/snail_get_hit_right.fbx",
		fall = "assets/animations/monsters/snail/snail_get_hit_front_left.fbx",
	},
	moveSound = "snail_walk",
	attackSound = "snail_attack",
	hitSound = "snail_hit",
	dieSound = "snail_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	health = 90,
	sight = 2.5,
	attackPower = 6,
	movementCoolDown = 4,
	coolDown = { 0.5, 4 },
	evasion = -10,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 50,
	lootDrop = { 75, "snail_slice"},
	healthIncrement = 30,
	attackPowerIncrement = 3,
--	healthIncrement = 7,
--	attackPowerIncrement = 1,
--	attackPowerIncrement = 0.75,
	brain = "Melee",
}

--Snail LVL 2
defineAiSwitchMonster{
	name = "snail_purple",
	class = "Monster",
	model = "mod_assets/models/snail_red_purple.fbx",	
	meshName = "snail_mesh",
	animations = {
		idle = "assets/animations/monsters/snail/snail_idle.fbx",
		moveForward = "assets/animations/monsters/snail/snail_walk.fbx",
		turnLeft = "assets/animations/monsters/snail/snail_turn_left.fbx",
		turnRight = "assets/animations/monsters/snail/snail_turn_right.fbx",
		attack = "assets/animations/monsters/snail/snail_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/snail/snail_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/snail/snail_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/snail/snail_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/snail/snail_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/snail/snail_get_hit_right.fbx",
		fall = "assets/animations/monsters/snail/snail_get_hit_front_left.fbx",
	},
	moveSound = "snail_walk",
	attackSound = "snail_attack",
	hitSound = "snail_hit",
	dieSound = "snail_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	health = 120,
	sight = 2.5,
	attackPower = 9,
	movementCoolDown = 4,
	coolDown = { 0.5, 4 },
	evasion = -8,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 60,
	lootDrop = { 75, "snail_slice", 10, "snail_slice" },
	healthIncrement = 30,
	attackPowerIncrement = 3,
--	healthIncrement = 7,
--	attackPowerIncrement = 1,
--	attackPowerIncrement = 0.75,
	brain = "Melee",

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
      
		
	end]],	
	onProjectileHit = [[function(self, projectile)
		if (projectile.name == "snail_projectile") then
			return false;
		end
	end]],
	
	brains = 
	{
		{	
			
			condition = { "directdistance", 2, 2 },
			animations = { attack = "mod_assets/animations/snail_shoot.fbx" },
			rangedAttack = "poison_bolt",
			brain = "Ranged",
			-- override ranged attack for this monster! Note the hook is a string
			onRangedAttack = [[function(self)
				local x, z = getForward(self.facing)
				shootProjectile("snail_projectile", self.level, self.x, self.y, self.facing, 9.0, 7.0, 0.1, -x, 0.7, z, 5, self, true);
				return false;
			end]],
			onPartyProjectileHit = [[function(champ, proj, damage, damtype)
				if (proj.name == "snail_projectile") then
					party:playScreenEffect("hit_dust")
				end
			end]],					
		},
	},	
}



--------------------
--SKELETON WARRIOR--
--------------------

fw_defineObject{
	name = "skeleton_warrior",
	class = "Monster",
	model = "assets/models/monsters/skeleton_warrior.fbx",
	meshName = "skeleton_warrior_mesh",
	animations = {
		idle = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_idle.fbx",
		moveForward = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_walk.fbx",
		turnLeft = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_turn_left.fbx",
		turnRight = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_turn_right.fbx",
		attack = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_attack.fbx",
		attackBack = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_attack_back.fbx",
		getHitFrontLeft = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_right.fbx",
		fall = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_front_left.fbx",
	},
	moveSound = "skeleton_walk",
	footstepSound = "skeleton_footstep",
	attackSound = "skeleton_attack",
	hitSound = "skeleton_hit",
	dieSound = "skeleton_die",
	hitEffect = "hit_dust",
	capsuleHeight = 0.7,
	capsuleRadius = 0.25,
	collisionRadius = 0.6,
	health = 120,
	sight = 4,
	attackPower = 9,
	accuracy = 10,
	protection = 5,
	immunities = { "poison" },
	movementCoolDown = 2,
	noRecoilInterval = { 0.25, 0.5 },
	exp = 90,
	lootDrop = { 50, "legionary_spear", 50, "legionary_shield" },
	healthIncrement = 15,
	attackPowerIncrement = 5,
	protectionIncrement = 1,
--	healthIncrement = 5,
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1.25,
--	protectionIncrement = 0.1,
	brain = "Melee",
}

cloneObject{
   name = "skeleton_no_xp",
   baseObject = "skeleton_warrior",
   model = "mod_assets/models/skeleton_warrior_noxp.fbx",
     exp = 0,
   onDie = function(self, dir)
      for i=1,4 do
      party:getChampion(i):gainExp(0)
      end
   end,
}


fw_defineObject{
	name = "skeleton_p_no_xp",
	class = "MonsterGroup",
	monsterType = "skeleton_no_xp",
	count = 4,
	exp = 0,
   onDie = function(self, dir)
      for i=1,4 do
      party:getChampion(i):gainExp(0)
      end
   end,
}

cloneObject{
   name = "skeleton_archer_no_mvt",
   baseObject = "skeleton_archer",
 onMove = function(self,dir)
  return false
end,
onTurn = function(self,dir)
  return false
end,

}
cloneObject{
   name = "skeleton_archer_no_mvt_no_xp",
   baseObject = "skeleton_archer",
 onMove = function(self,dir)
  return false
end,
onTurn = function(self,dir)
  return false
end,
onDie = function(self, dir)
      for i=1,4 do
      party:getChampion(i):gainExp(0)
      end
   end,
}
--skeleton_warrior LVL 2
cloneObject{
	name = "skeleton_warrior_blue",
	baseObject = "skeleton_warrior",
	model = "mod_assets/models/skeleton_warrior_sword.fbx",
	lootDrop = { 10, "long_sword", 10, "round_shield" },
	immunities = { "assassination", "backstab" },
	exp = 110,
	health = 150,
	attackPower = 15,
	protection = 7,
}

fw_defineObject{
	name = "skeleton_patrol_blue",
	class = "MonsterGroup",
	monsterType = "skeleton_warrior_blue",
	count = 4,
}


--skeleton_warrior LVL 3
cloneObject{
	name = "skeleton_ghost",
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

}
cloneObject{
	name = "skeleton_ghost_nowallattack",
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
   onAttack = function( self , weapon )
        return partyScript.canAttackb( self , weapon )
   end,  
}

cloneObject{
	name = "skeleton_ghost_no_xp",
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
	     exp = 0,
   onDie = function(self, dir)
      for i=1,4 do
      party:getChampion(i):gainExp(0)
      end
   end,
	healthIncrement = 15,
	attackPowerIncrement = 5,
	protectionIncrement = 1,
	particleSystem = "ghostsk",
	particleSystemNode = "head",

}



----------
--HERDER--
----------

fw_defineObject{
	name = "herder",
	class = "Monster",
	model = "assets/models/monsters/herder_med_top.fbx",
	meshName = "herder_med_top_mesh",
	animations = {
		idle = "assets/animations/monsters/herder/herder_med_top_idle.fbx",
		moveForward = "assets/animations/monsters/herder/herder_med_top_walk.fbx",
		turnLeft = "assets/animations/monsters/herder/herder_med_top_turn_left.fbx",
		turnRight = "assets/animations/monsters/herder/herder_med_top_turn_right.fbx",
		attack = "assets/animations/monsters/herder/herder_med_top_attack.fbx",
		attack2 = "assets/animations/monsters/herder/herder_med_top_attack_02.fbx",
		getHitFrontLeft = "assets/animations/monsters/herder/herder_med_top_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/herder/herder_med_top_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/herder/herder_med_top_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/herder/herder_med_top_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/herder/herder_med_top_get_hit_right.fbx",
		fall = "assets/animations/monsters/herder/herder_med_top_get_hit_front_left.fbx",
	},
	moveSound = "herder_walk",
	footstepSound = "herder_footstep",
	attackSound = "herder_attack",
	hitSound = "herder_hit",
	dieSound = "herder_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	health = 120,
	sight = 2.5,
	attackPower = 10,
	movementCoolDown = 3,
	coolDown = { 1, 3 },
	evasion = -10,
	noRecoilInterval = { 0.1, 0.5 },
	lootDrop = { 50, "herder_cap" },
	exp = 60,
	healthIncrement = 30,
	attackPowerIncrement = 4,
--	healthIncrement = 10,
--	attackPowerIncrement = 1.3,
--	attackPowerIncrement = 1,
	brain = "Melee",
}




--Herder LVL 2
cloneObject{
	name = "herder_green",
	baseObject = "herder",
	model = "mod_assets/models/herder_green.fbx",
	health = 150,
	attackPower = 14,
	evasion = -7,
	exp = 10,
	--XP : 60 + 10 = 70
	onDie = function(self)		
      return herderondie.onDieOne(self)
   end,
}

--Herder LVL 3
cloneObject{
	name = "herder_blue",
	baseObject = "herder",
	model = "mod_assets/models/herder_blue.fbx",
	health = 180,
	attackPower = 18,
	evasion = -5,
	exp = 15,
	--XP : 60 + 10 + 15 = 85
	onDie = function(self)
      return herderondie.onDieTwo(self)
   end,
}


-----------
--CROWERN--
-----------

fw_defineObject{
	name = "crowern",
	class = "Monster",
	model = "assets/models/monsters/crowern01.fbx",
	meshName = "crowern_mesh",
	animations = {
		idle = "assets/animations/monsters/crowern/crowern_idle.fbx",
		moveForward = "assets/animations/monsters/crowern/crowern_fly.fbx",
		turnLeft = "assets/animations/monsters/crowern/crowern_turn_left.fbx",
		turnRight = "assets/animations/monsters/crowern/crowern_turn_right.fbx",
		attack = "assets/animations/monsters/crowern/crowern_attack.fbx",
		attackMove = "assets/animations/monsters/crowern/crowern_attack_stay.fbx",
		getHitFrontLeft = "assets/animations/monsters/crowern/crowern_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/crowern/crowern_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/crowern/crowern_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/crowern/crowern_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/crowern/crowern_get_hit_right.fbx",
		fall = "assets/animations/monsters/crowern/crowern_get_hit.fbx",
	},
	moveSound = "crowern_walk",
	footstepSound = "crowern_footstep",
	attackSound = "crowern_attack",
	hitSound = "crowern_hit",
	dieSound = "crowern_die",
	hitEffect = "hit_blood",
	capsuleHeight = 0.5,
	capsuleRadius = 0.2,
	collisionRadius = 0.7,
	health = 120,
	sight = 4,
	attackPower = 15,
	movementCoolDown = 1,
	coolDown = { 1, 3 },
	evasion = 10,
	flying = true,
	noRecoilInterval = { 0.1, 1.0 },
	exp = 90,
	healthIncrement = 15,
	attackPowerIncrement = 5,
--	healthIncrement = 5,
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1.25,
	brain = "Melee",
}




--Crowern LVL 2
cloneObject{
	name = "crowern_red",
	baseObject = "crowern",
	model = "mod_assets/models/crowern_red.fbx",
	exp = 100,
	health = 135,
	attackPower = 20,
	onProjectileHit = function(monster, weapon)
	return return_throw_script.Projectile(monster,weapon)
    end,
}
--Crowern LVL 3
cloneObject{
	name = "crowern_purple",
	baseObject = "crowern",
	model = "mod_assets/models/crowern_purple.fbx",
	exp = 115,
	health = 150,
	attackPower = 25,

}


-------------
--SCAVENGER--
-------------

fw_defineObject{
	name = "scavenger",
	class = "Monster",
	model = "assets/models/monsters/scavenger01.fbx",
	meshName = "scavenger_mesh",
	animations = {
		idle = "assets/animations/monsters/scavenger/scavenger_01_idle.fbx",
		moveForward = "assets/animations/monsters/scavenger/scavenger_01_walk.fbx",
		turnLeft = "assets/animations/monsters/scavenger/scavenger_01_turn_left.fbx",
		turnRight = "assets/animations/monsters/scavenger/scavenger_01_turn_right.fbx",
		attack = "assets/animations/monsters/scavenger/scavenger_01_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/scavenger/scavenger_01_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/scavenger/scavenger_01_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/scavenger/scavenger_01_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/scavenger/scavenger_01_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/scavenger/scavenger_01_get_hit_right.fbx",
		fall = "assets/animations/monsters/scavenger/scavenger_01_get_hit_front_left.fbx",
	},
	moveSound = "scavenger_walk",
	attackSound = "scavenger_attack",
	hitSound = "scavenger_hit",
	dieSound = "scavenger_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	collisionRadius = 0.7,
	health = 100,
	sight = 4,
	attackPower = 15,
	movementCoolDown = 1,
	coolDown = { 0, 2 },
	evasion = 10,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 70,
	healthIncrement = 20,
	attackPowerIncrement = 4,
--	healthIncrement = 6.7,
--	healthIncrement = 4, -- I nerfed them a little because they were extremely annoying
--	attackPowerIncrement = 1.3,
--	attackPowerIncrement = 0.6, -- I lowered this lower than 1 because I want them to not bite so dang hard!
	brain = "Melee",
}


--Scavenger LVL 2

defineAiSwitchMonster{
	name = "scavenger_purple",
	class = "Monster",
	model = "mod_assets/models/scavenger_purple.fbx",
	meshName = "scavenger_mesh",
	animations = {
		idle = "assets/animations/monsters/scavenger/scavenger_01_idle.fbx",
		moveForward = "assets/animations/monsters/scavenger/scavenger_01_walk.fbx",
		turnLeft = "assets/animations/monsters/scavenger/scavenger_01_turn_left.fbx",
		turnRight = "assets/animations/monsters/scavenger/scavenger_01_turn_right.fbx",
		attack = "assets/animations/monsters/scavenger/scavenger_01_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/scavenger/scavenger_01_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/scavenger/scavenger_01_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/scavenger/scavenger_01_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/scavenger/scavenger_01_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/scavenger/scavenger_01_get_hit_right.fbx",
		fall = "assets/animations/monsters/scavenger/scavenger_01_get_hit_front_left.fbx",
	},
	moveSound = "scavenger_walk",
	attackSound = "scavenger_attack",
	hitSound = "scavenger_hit",
	dieSound = "scavenger_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	collisionRadius = 0.7,
	health = 120,
	immunities = { "poison" },
	sight = 4,
	attackPower = 19,
	movementCoolDown = 1,
	coolDown = { 0, 2 },
	evasion = 10,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 80,
	healthIncrement = 20,
	attackPowerIncrement = 4,
--	healthIncrement = 6.7,
--	healthIncrement = 4, -- I nerfed them a little because they were extremely annoying
--	attackPowerIncrement = 1.3,
--	attackPowerIncrement = 0.6, -- I lowered this lower than 1 because I want them to not bite so dang hard!
	brain = "Melee",

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
      
		
	end]],	
	onProjectileHit = [[function(self, projectile)
		if (projectile.name == "egg_poison") then
			return false;
		end
	end]],
	
	brains = 
	{
		{	
			
			condition = { "directdistance", 2, 2 },
			animations = { attack = "mod_assets/animations/scavenger_shoot.fbx" },
			rangedAttack = "poison_bolt",
			brain = "Ranged",
			-- override ranged attack for this monster! Note the hook is a string
			onRangedAttack = [[function(self)
				local x, z = getForward(self.facing)
				shootProjectile("egg_poison", self.level, self.x, self.y, self.facing, 9.0, 7.0, 0.1, -x, 0.7, z, 3, self, true);
				return false;
			end]],
			onPartyProjectileHit = [[function(champ, proj, damage, damtype)
				if (proj.name == "egg_poison") then
					party:playScreenEffect("hit_goo")
					local randomChar = grimq.fromAliveChampions():random()
						if math.random() <= 0.3 then
							randomChar:setConditionCumulative("poison", 3);
						end
				end
			end]],					
		},
	},	
}





----------------
--HERDER SMALL--
----------------

fw_defineObject{
	name = "herder_small",
	class = "Monster",
	model = "assets/models/monsters/herder_small.fbx",
	meshName = "herder_small_mesh",
	animations = {
		idle = "assets/animations/monsters/herder/herder_small_top_idle.fbx",
		moveForward = "assets/animations/monsters/herder/herder_small_top_walk.fbx",
		turnLeft = "assets/animations/monsters/herder/herder_small_top_turn_left.fbx",
		turnRight = "assets/animations/monsters/herder/herder_small_top_turn_right.fbx",
		attack = "assets/animations/monsters/herder/herder_small_top_attack_jump.fbx",
		getHitFrontLeft = "assets/animations/monsters/herder/herder_small_top_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/herder/herder_small_top_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/herder/herder_small_top_get_hit_front_left.fbx",
		getHitLeft = "assets/animations/monsters/herder/herder_small_top_get_hit_front_left.fbx",
		getHitRight = "assets/animations/monsters/herder/herder_small_top_get_hit_front_right.fbx",
		fall = "assets/animations/monsters/herder/herder_small_top_get_hit_front_left.fbx",
	},
	moveSound = "herder_walk",
	attackSound = "herder_small_attack",
	hitSound = "herder_hit",
	dieSound = "herder_small_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	collisionRadius = 0.7,
	health = 80,
	sight = 3,
	attackPower = 10,
	rangedAttack = "poison_bolt",
	movementCoolDown = 2,
	coolDown = { 2, 4 },
	noRecoilInterval = { 0.1, 0.5 },
	exp = 80,
	healthIncrement = 20,
	attackPowerIncrement = 5,
--	healthIncrement = 6,
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1,
	brain = "HerderSmall",
}





--------------
--HERDER BIG--
--------------

fw_defineObject{
	name = "herder_big",
	class = "Monster",
	model = "assets/models/monsters/herder_big_top.fbx",
	meshName = "herder_big_top_mesh",
	animations = {
		idle = "assets/animations/monsters/herder/herder_big_top_idle.fbx",
		moveForward = "assets/animations/monsters/herder/herder_big_top_walk.fbx",
		turnLeft = "assets/animations/monsters/herder/herder_big_top_turn_left.fbx",
		turnRight = "assets/animations/monsters/herder/herder_big_top_turn_right.fbx",
		attack = "assets/animations/monsters/herder/herder_big_top_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/herder/herder_big_top_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/herder/herder_big_top_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/herder/herder_big_top_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/herder/herder_big_top_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/herder/herder_big_top_get_hit_right.fbx",
		fall = "assets/animations/monsters/herder/herder_big_top_get_hit_front_left.fbx",
	},
	moveSound = "herder_walk",
	footstepSound = "herder_footstep",
	attackSound = "herder_big_attack",
	hitSound = "herder_hit",
	dieSound = "herder_big_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	health = 300,
	sight = 5,
	allAroundSight = true,
	attackPower = 14,
	movementCoolDown = 3,
	coolDown = { 2, 3 },
	evasion = -10,
	immunities = { "poison" },
	noRecoilInterval = { 0.1, 0.5 },
	exp = 100,
	lootDrop = { 50, "herder_cap", 20, "herder_cap" },
	healthIncrement = 30,
	attackPowerIncrement = 4,
--	healthIncrement = 10,
--	attackPowerIncrement = 1.3,
--	attackPowerIncrement = 1,
	brain = "HerderBig",
}


cloneObject{
   name = "herder_big_noxp",
   baseObject = "herder_big",
   model = "mod_assets/models/herder_big_noxp.fbx",
     exp = 0,
   onDie = function(self, dir)
      for i=1,4 do
      party:getChampion(i):gainExp(0)
      end
	 local s = herd_big_four  
      s:increment()
   end,

}

--Herder Big LVL 2
cloneObject{
   name = "herder_big_green",
   baseObject = "herder_big",
	model = "mod_assets/models/herder_big_green.fbx",	
	health = 350,
	sight = 5,	
	attackPower = 18,	
	evasion = -8,	
	exp = 60,
	--XP 60 + 60 = 120
	onDie = function( self )
   return herder_big_spawn.onDieGreen( self )
	end,
	onDamage = function( monster , damageAmount , damageType )
   return herder_big_spawn.onDamageGreen( monster , damageAmount , damageType )
	end,
	
}
--Herder Big LVL 3
cloneObject{
   name = "herder_big_blue",
   baseObject = "herder_big",
	model = "mod_assets/models/herder_big_blue.fbx",	
	health = 400,
	sight = 5,	
	attackPower = 22,	
	evasion = -6,	
	exp = 10,
	--XP 60 + 70 + 10 = 140 
	onDie = function( self )
   return herder_big_spawn.onDieBlue( self )
	end,
	onDamage = function( monster , damageAmount , damageType )
   return herder_big_spawn.onDamageBlue( monster , damageAmount , damageType )
	end,
}









----------
--SPIDER--
----------

fw_defineObject{
	name = "spider",
	class = "Monster",
	model = "assets/models/monsters/spider.fbx",
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
	health = 160,
	sight = 3,
	attackPower = 23,
	accuracy = 10,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 175,
	healthIncrement = 30,
	attackPowerIncrement = 5,
--	healthIncrement = 10,
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1.25,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.3 then
			champion:setConditionCumulative("poison", 30)
		--	champion:setConditionCumulative("poison", 30 + (partyLvScript.raiseLv * 2))
		end
	end,
}

--Spider LVL 3
defineAiSwitchMonster{
	name = "spider_medium",
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

--Spider LVL 2

defineAiSwitchMonster{
	name = "spider_low",
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



-------------------
--SKELETON ARCHER--
-------------------

fw_defineObject{
	name = "skeleton_archer",
	class = "Monster",
	model = "assets/models/monsters/skeleton_archer.fbx",
	meshName = "skeleton_archer_mesh",
	animations = {
		idle = "assets/animations/monsters/skeleton_archer/skeleton_archer_idle.fbx",
		moveForward = "assets/animations/monsters/skeleton_archer/skeleton_archer_walk.fbx",
		strafeLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_strafe_left.fbx",
		strafeRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_strafe_right.fbx",
		turnLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_turn_left.fbx",
		turnRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_turn_right.fbx",
		attack = "assets/animations/monsters/skeleton_archer/skeleton_archer_attack.fbx",
		attackBack = "assets/animations/monsters/skeleton_archer/skeleton_archer_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_right.fbx",
		fall = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_front_left.fbx",
	},
	moveSound = "skeleton_walk",
	footstepSound = "skeleton_archer_footstep",
	attackSound = "skeleton_archer_attack",
	hitSound = "skeleton_hit",
	dieSound = "skeleton_die",
	hitEffect = "hit_dust",
	capsuleHeight = 0.7,
	capsuleRadius = 0.25,
	collisionRadius = 0.6,
	health = 120,
	sight = 6,
	attackPower = 14,
	rangedAttack = "frost_arrow",
	coolDown = { 1, 4 },
	protection = 5,
	immunities = { "poison" },
	movementCoolDown = 2,
	noRecoilInterval = { 0.25, 0.5 },
	lootDrop = { 25, "cold_arrow" },
	exp = 100,
	healthIncrement = 15,
	attackPowerIncrement = 5,
--	healthIncrement = 5,
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1,
	brain = "SkeletonArcher",
}


--Archer LVL 2
fw_defineObject{
	name = "skeleton_archer_shadow",
	class = "Monster",
	model = "mod_assets/models/skeleton_archer_shadow.fbx",
	meshName = "skeleton_archer_mesh",
	animations = {
		idle = "assets/animations/monsters/skeleton_archer/skeleton_archer_idle.fbx",
		moveForward = "assets/animations/monsters/skeleton_archer/skeleton_archer_walk.fbx",
		strafeLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_strafe_left.fbx",
		strafeRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_strafe_right.fbx",
		turnLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_turn_left.fbx",
		turnRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_turn_right.fbx",
		attack = "assets/animations/monsters/skeleton_archer/skeleton_archer_attack.fbx",
		attackBack = "assets/animations/monsters/skeleton_archer/skeleton_archer_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_right.fbx",
		fall = "assets/animations/monsters/skeleton_archer/skeleton_archer_get_hit_front_left.fbx",
	},
	moveSound = "skeleton_walk",
	footstepSound = "skeleton_archer_footstep",
	attackSound = "skeleton_archer_attack",
	hitSound = "skeleton_hit",
	dieSound = "skeleton_die",
	hitEffect = "hit_dust",
	capsuleHeight = 0.7,
	capsuleRadius = 0.25,
	collisionRadius = 0.6,
	health = 150,
	sight = 6,
	attackPower = 19,
	rangedAttack = "frost_arrow",
	coolDown = { 1, 4 },
	protection = 6,
	immunities = { "poison" },
	movementCoolDown = 2,
	noRecoilInterval = { 0.25, 0.5 },
	lootDrop = { 25, "cold_arrow" },
	particleSystem = "death_dust_loop",
	particleSystemNode = "hip", 
	exp = 120,
	healthIncrement = 15,
	attackPowerIncrement = 5,
	brain = "SkeletonArcher",
}

fw_defineObject{
	name = "skeleton_archer_shadow_patrol",
	class = "MonsterGroup",
	monsterType = "skeleton_archer_shadow",
	count = 2,
}




----------
--WYVERN--
----------

fw_defineObject{
	name = "wyvern",
	class = "Monster",
	model = "assets/models/monsters/wyvern.fbx",
	meshName = "wyvern_mesh",
	animations = {
		idle = "assets/animations/monsters/wyvern/wyvern_idle.fbx",
		moveForward = "assets/animations/monsters/wyvern/wyvern_fly.fbx",
		turnLeft = "assets/animations/monsters/wyvern/wyvern_turn_left.fbx",
		turnRight = "assets/animations/monsters/wyvern/wyvern_turn_right.fbx",
		attack = "assets/animations/monsters/wyvern/wyvern_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/wyvern/wyvern_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/wyvern/wyvern_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/wyvern/wyvern_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/wyvern/wyvern_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/wyvern/wyvern_get_hit_right.fbx",
		fall = "assets/animations/monsters/wyvern/wyvern_get_hit_front_left.fbx",
	},
	turnAnimSpeed = 1.1,
	moveSound = "wyvern_walk",
	footstepSound = "wyvern_footstep",
	attackSound = "wyvern_attack",
	hitSound = "wyvern_hit",
	dieSound = "wyvern_die",
	hitEffect = "hit_blood",
	capsuleHeight = 0.5,
	capsuleRadius = 0.2,
	collisionRadius = 0.7,
	health = 200,
	protection = 4,
	sight = 5,
	attackPower = 23,
	rangedAttack = "lightning_bolt",
	movementCoolDown = 1,
	coolDown = { 1, 3 },
	evasion = 10,
	flying = true,
	noRecoilInterval = { 0.1, 1.0 },
	exp = 120,
	healthIncrement = 15,
	attackPowerIncrement = 5,
--	healthIncrement = 5,
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1.25,
	brain = "Ranged",
	
}


fw_defineObject{
	name = "shrakk_torr",
	class = "Monster",
	model = "assets/models/monsters/shrakk_torr.fbx",
	meshName = "shrakk_torr_mesh",
	animations = {
		idle = "assets/animations/monsters/shrakk_torr/shrakk_torr_idle.fbx",
		moveForward = "assets/animations/monsters/shrakk_torr/shrakk_torr_walk.fbx",
		turnLeft = "assets/animations/monsters/shrakk_torr/shrakk_torr_turn_left.fbx",
		turnRight = "assets/animations/monsters/shrakk_torr/shrakk_torr_turn_right.fbx",
		attack = "assets/animations/monsters/shrakk_torr/shrakk_torr_attack.fbx",
		getHitFrontLeft = "assets/animations/monsters/shrakk_torr/shrakk_torr_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/shrakk_torr/shrakk_torr_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/shrakk_torr/shrakk_torr_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/shrakk_torr/shrakk_torr_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/shrakk_torr/shrakk_torr_get_hit_right.fbx",
		fall = "assets/animations/monsters/shrakk_torr/shrakk_torr_get_hit_front_left.fbx",
	},
	moveSound = "shrakk_torr_fly",
	attackSound = "shrakk_torr_attack",
	hitSound = "shrakk_torr_hit",
	dieSound = "shrakk_torr_die",
	hitEffect = "hit_goo",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	collisionRadius = 0.7,
	health = 180,
	sight = 4,
	attackPower = 25,
	accuracy = 15,
	coolDown = { 0.5, 2 },
	evasion = 25,
	flying = true,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 225,
	lightName = "light1",
	lightColor = vec(0.5, 1.0, 1.5),
	lightBrightness = 8,
	lightRange = 1.5,
	healthIncrement = 30,
	attackPowerIncrement = 5,
--	healthIncrement = 10,
--	healthIncrement = 7, -- I lowered this further because they stink!
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1.25,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.35 then
			champion:setConditionCumulative("diseased", 30)
		end
	end,
	
}


fw_defineObject{
	name = "tentacles",
	class = "Monster",
	model = "assets/models/monsters/drainage_tentacles.fbx",
	meshName = "drainage_tentacles_mesh",
	animations = {
		idle = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_idle.fbx",
		turnLeft = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_turn_left.fbx",
		turnRight = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_turn_right.fbx",
		hide = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_hide.fbx",
		reveal = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_raise.fbx",
		attack = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_attack.fbx",
		attackBack = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_attack_back.fbx",
		attackLeft = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_attack_left.fbx",
		attackRight = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_attack_right.fbx",
		getHitFrontLeft = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_get_hit_front_left.fbx",
		getHitLeft = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_get_hit_front_right.fbx",
		getHitRight = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_get_hit_front_left.fbx",
		fall = "assets/animations/monsters/drainage_tentacles/drainage_tentacles_get_hit_front_left.fbx",
	},
	moveSound = "tentacles_walk",
	attackSound = "tentacles_attack",
	hitSound = "tentacles_hit",
	dieSound = "tentacles_die",
	hitEffect = "hit_goo",
	capsuleHeight = 1,
	capsuleRadius = 0.1,
	health = 420,
	immunities = { "assassination", "backstab" },
	sight = 2.5,
	allAroundSight = true,
	attackPower = 25,
	accuracy = 15,
	coolDown = { 2, 4 },
	noRecoilInterval = { 0.25, 0.5 },
	exp = 325,
	healthIncrement = 30,
	attackPowerIncrement = 4,
--	healthIncrement = 10,
--	attackPowerIncrement = 1.3,
--	attackPowerIncrement = 1,
	brain = "Tentacle",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.2 then
			champion:setConditionCumulative("paralyzed", 10)
		end
	end,
}


fw_defineObject{
	name = "green_slime",
	class = "Monster",
	model = "assets/models/monsters/green_slime.fbx",
	meshName = "green_slime_mesh",
	animations = {
		idle = "assets/animations/monsters/slime/green_slime_idle.fbx",
		moveForward = "assets/animations/monsters/slime/green_slime_move_forward.fbx",
		moveBackward = "assets/animations/monsters/slime/green_slime_move_backward.fbx",
		strafeLeft = "assets/animations/monsters/slime/green_slime_strafe_left.fbx",
		strafeRight = "assets/animations/monsters/slime/green_slime_strafe_right.fbx",
		turnLeft = "assets/animations/monsters/slime/green_slime_turn_left.fbx",
		turnRight = "assets/animations/monsters/slime/green_slime_turn_right.fbx",
		attack = "assets/animations/monsters/slime/green_slime_attack.fbx",
		attackBack = "assets/animations/monsters/slime/green_slime_attack_back.fbx",
		attackLeft = "assets/animations/monsters/slime/green_slime_attack_left.fbx",
		attackRight = "assets/animations/monsters/slime/green_slime_attack_right.fbx",
		getHitFrontLeft = "assets/animations/monsters/slime/green_slime_get_hit_front_left.fbx",
		getHitFrontRight = "assets/animations/monsters/slime/green_slime_get_hit_front_right.fbx",
		getHitBack = "assets/animations/monsters/slime/green_slime_get_hit_back.fbx",
		getHitLeft = "assets/animations/monsters/slime/green_slime_get_hit_left.fbx",
		getHitRight = "assets/animations/monsters/slime/green_slime_get_hit_right.fbx",
		fall = "assets/animations/monsters/slime/green_slime_get_hit_front_left.fbx",
	},
	moveSound = "slime_walk",
	attackSound = "slime_attack",
	hitSound = "slime_hit",
	dieSound = "slime_die",
	hitEffect = "hit_slime",
	capsuleHeight = 0.2,
	capsuleRadius = 0.7,
	collisionRadius = 0.8,
	health = 450,
	immunities = { "assassination", "backstab" },
	sight = 2.5,
	allAroundSight = true,
	attackPower = 25,
	accuracy = 30,
	coolDown = { 0.5, 4 },
	evasion = -20,
	movementCoolDown = 4,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 200,
	lightName = "light",
	lightColor = vec(0.0, 2.0, 0.0),
	lightBrightness = 5,
	lightRange = 3,
	healthIncrement = 50,
	attackPowerIncrement = 5,
--	healthIncrement = 17,
--	healthIncrement = 14, -- just to help a tiny bit more :D
--	attackPowerIncrement = 1.7,
--	attackPowerIncrement = 1, -- I lowered this even further than 1.25, as I hate those things!
	brain = "Slime",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.2 then
			champion:setConditionCumulative("diseased", 30)
		end
	end,
}







cloneObject{
	name = "dark_lizard",
	baseObject = "ice_lizard",
	model = "mod_assets/models/dark_lizard.fbx",
	health = 1100,
	lootDrop = { 60, "dark_lizard_steak" },
}

cloneObject{
	name = "green_lizard",
	baseObject = "ice_lizard",
	model = "mod_assets/models/green_lizard.fbx",
	health = 700,
	immunities = { "poison" },
	lootDrop = { 60, "green_lizard_steak" },
}

cloneObject{
	name = "fire_lizard",
	baseObject = "ice_lizard",
	model = "mod_assets/models/fire_lizard.fbx",
	health = 700,
	immunities = { "fire" },
	lootDrop = { 60, "fire_lizard_steak" },
}

cloneObject{
	name = "scavenger_red_tooth",
	baseObject = "scavenger",
	model = "mod_assets/models/scavenger_red_tooth.fbx",
	moveSound = "scavenger_walk",
	attackSound = "scavenger_attack",
	hitSound = "scavenger_hit",
	dieSound = "scavenger_die",
	hitEffect = "hit_goo",
	health = 140,
	sight = 5,
	attackPower = 20,
	movementCoolDown = 1,
	coolDown = { 0, 1 },
	evasion = 15,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 145,
	healthIncrement = 20,
	attackPowerIncrement = 4,
	brain = "Melee",
}

fw_defineObject{
	name = "scavenger_red_tooth_swarm",
	class = "MonsterGroup",
	monsterType = "scavenger_red_tooth",
	count = 2,
}



cloneObject{
	name = "scavenger_black",
	baseObject = "scavenger",
	model = "mod_assets/models/scavenger_black.fbx",
	moveSound = "scavenger_walk",
	attackSound = "scavenger_attack",
	hitSound = "scavenger_hit",
	dieSound = "scavenger_die",
	hitEffect = "hit_goo",
	health = 230,
	sight = 5,
	attackPower = 24,
	movementCoolDown = 1,
	coolDown = { 0, 2 },
	evasion = 20,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 245,
	healthIncrement = 20,
	attackPowerIncrement = 4,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.6 then
			champion:setConditionCumulative("poison", 50)
		end
	end,
}

fw_defineObject{
	name = "scavenger_black_swarm",
	class = "MonsterGroup",
	monsterType = "scavenger_black",
	count = 2,
}


cloneObject{
	name = "venom_wyvern",
	baseObject = "wyvern",
	model = "mod_assets/models/venom_wyvern.fbx",
	attackSound = "skeleton_attack",
	sight = 6,
	protection = 8,
	evasion = 10,
	rangedAttack = "poison_bolt",
	exp = 210,
	healthIncrement = 30,
	attackPowerIncrement = 7,
	health = 200,
	coolDown = { 1, 2 },
	immunities = { "poison" },
}

cloneObject{
	name = "dark_wyvern",
	baseObject = "wyvern",
	model = "mod_assets/models/dark_wyvern.fbx",
	attackSound = "skeleton_attack",
	sight = 6,
	protection = 8,
	evasion = 10,
	rangedAttack = "lightning_bolt_greater",
	exp = 210,
	healthIncrement = 30,
	attackPowerIncrement = 7,
	health = 200,
	coolDown = { 1, 2 },
	immunities = { "shock" },
}

cloneObject{
	name = "flame_wyvern",
	baseObject = "wyvern",
	model = "mod_assets/models/flame_wyvern.fbx",
	attackSound = "skeleton_attack",
	sight = 6,
	protection = 10,
	evasion = 20,
	rangedAttack = "fireball_greater",
	exp = 700,
	healthIncrement = 30,
	attackPowerIncrement = 10,
	health = 500,
	coolDown = { 1, 1 },
	immunities = { "fire" },
}

cloneObject{
        name = "skeleton_dark",
        baseObject = "skeleton_warrior",
        model = "mod_assets/models/skeleton_dark.fbx",
        health = 700,
	sight = 6,
	attackPower = 40,
	accuracy = 10,
	protection = 30,
	immunities = { "poison","cold"},
	movementCoolDown = 1,
	noRecoilInterval = { 0.25, 0.5 },
	exp = 900,
	healthIncrement = 30,
	lootDrop = { 20, "legionary_spear_dark", 20, "legionary_shield_dark" },
	attackPowerIncrement = 10,
	protectionIncrement = 5,
}

cloneObject{
	name = "spider_red",
	baseObject = "spider",
	model = "mod_assets/models/spider_red.fbx",
	meshName = "spider_mesh",
	health =320,
	sight = 4,
	attackPower = 30,
	accuracy = 15,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 290,
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	immunities = { "poison" },
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.5 then
			champion:setConditionCumulative("poison", 50)
		end
	end,
}




cloneObject{
	name = "spider_dark_orange",
	baseObject = "spider",
	model = "mod_assets/models/spider_dark_orange.fbx",
	meshName = "spider_mesh",
	health = 450,
	sight = 4,
	attackPower = 40,
	accuracy = 20,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 400,
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.6 then
			champion:setConditionCumulative("poison", 50)
		end
	end,
}

cloneObject{
	name = "spider_green",
	baseObject = "spider",
	model = "mod_assets/models/spider_green.fbx",
	meshName = "spider_mesh",
	health = 800,
	sight = 5,
	attackPower = 50,
	accuracy = 20,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 1300,
	healthIncrement = 50,
	attackPowerIncrement = 5,
	brain = "Melee",
	immunities = { "poison" },
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.8 then
			champion:setConditionCumulative("diseased", 65)
		end
	end,
}

cloneObject{
	name = "spider_northern",
	baseObject = "spider",
	model = "mod_assets/models/spider_northern.fbx",
	meshName = "spider_mesh",
	health = 260,
	sight = 4,
	attackPower = 28,
	accuracy = 15,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 275,
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	immunities = { "cold" },
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.5 then
			champion:setConditionCumulative("paralyzed", 40)
		end
	end,
}

cloneObject{
	name = "spider_tropical",
	baseObject = "spider",
	model = "mod_assets/models/spider_tropical.fbx",
	meshName = "spider_mesh",
	health = 750,
	sight = 4,
	attackPower = 40,
	accuracy = 20,
	movementCoolDown = 1,
	noRecoilInterval = { 0.1, 0.4 },
	exp = 1100,
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	immunities = { "poison","cold" },
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.6 then
			champion:setConditionCumulative("diseased", 50)
			champion:setConditionCumulative("paralyzed", 50)
		end
	end,
}

cloneObject{
	name = "exotic_crab",
	baseObject = "crab",
	model = "mod_assets/models/exotic_crab.fbx",
	meshName = "crab_mesh",
	health = 650,
	sight = 3.5,
	attackPower = 50,
	accuracy = 20,
	coolDown = { 1, 3 },
	protection = 20,
	movementCoolDown = 1,
	noRecoilInterval = { 0.2, 0.7 },
	exp = 650,
	healthIncrement = 40,
	attackPowerIncrement = 10,
	brain = "Crab",
}

cloneObject{
	name = "exotic_crab_green",
	baseObject = "crab",
	model = "mod_assets/models/exotic_crab_1.fbx",
	meshName = "crab_mesh",
	health = 1,
	sight = 3.5,
	attackPower = 65,
	accuracy = 20,
	coolDown = { 1, 2 },
	protection = 20,
	movementCoolDown = 1,
	noRecoilInterval = { 0.2, 0.7 },
	exp = 1850,
	healthIncrement = 40,
	attackPowerIncrement = 10,
	brain = "Crab",
	immunities = { "cold" },
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.8 then
			champion:setConditionCumulative("paralyzed", 50)
		end
	end,
}

cloneObject{
	name = "exotic_crab_blue",
	baseObject = "crab",
	model = "mod_assets/models/exotic_crab_2.fbx",
	meshName = "crab_mesh",
	health = 610,
	sight = 3.5,
	attackPower = 55,
	accuracy = 20,
	coolDown = { 1, 2 },
	protection = 20,
	movementCoolDown = 1,
	noRecoilInterval = { 0.2, 0.7 },
	exp = 750,
	healthIncrement = 40,
	attackPowerIncrement = 10,
	brain = "Crab",
}

cloneObject{
	name = "exotic_crab_purple",
	baseObject = "crab",
	model = "mod_assets/models/exotic_crab_3.fbx",
	meshName = "crab_mesh",
	health = 610,
	sight = 3.5,
	attackPower = 55,
	accuracy = 20,
	coolDown = { 1, 2 },
	protection = 20,
	movementCoolDown = 1,
	noRecoilInterval = { 0.2, 0.7 },
	exp = 750,
	healthIncrement = 40,
	attackPowerIncrement = 10,
	brain = "Crab",
}

cloneObject{
	name = "snail_rainbow",
	baseObject = "snail",
	model = "mod_assets/models/snail_rainbow.fbx",
	meshName = "snail_mesh",
	health = 200,
	sight = 3.5,
	attackPower = 25,
	movementCoolDown = 3,
	coolDown = { 0.5, 1 },
	evasion = 0,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 180,
	lootDrop = { 75, "snail_slice", 10, "snail_slice" },
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.2 then
			champion:setConditionCumulative("diseased", 30)
		end
	end,
}

cloneObject{
	name = "snail_green/brown",
	baseObject = "snail",
	model = "mod_assets/models/snail_green_brown.fbx",
	meshName = "snail_mesh",
	health = 440,
	sight = 3.5,
	attackPower = 30,
	movementCoolDown = 3,
	coolDown = { 0.5, 2 },
	evasion = 0,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 320,
	lootDrop = { 75, "snail_slice", 10, "snail_slice" },
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.6 then
			champion:setConditionCumulative("poison", 50)
		end
	end,
}



cloneObject{
	name = "snail_blue_green",
	baseObject = "snail",
	model = "mod_assets/models/snail_blue_green.fbx",
	meshName = "snail_mesh",
	health = 300,
	sight = 3.5,
	attackPower = 25,
	movementCoolDown = 3,
	coolDown = { 0.5, 2 },
	evasion = 0,
	noRecoilInterval = { 0.1, 0.5 },
	exp = 230,
	lootDrop = { 75, "snail_slice", 10, "snail_slice" },
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.4 then
			champion:setConditionCumulative("paralyzed", 30)
		end
	end,
}

cloneObject{
	name = "ogre_red_horn",
   	baseObject = "ogre",
	model = "mod_assets/models/ogre_red_horn.fbx",
	health = 1000,
	sight = 5,
	attackPower = 95,
	accuracy = 10,
	protection = 20,
	evasion = -20,
	lootDrop = { 15, "ogre_red_horn_hammer" },
}

cloneObject{
	name = "shrakk_torr_bee",
	baseObject = "shrakk_torr",
	model = "mod_assets/models/shrakk_torr_bee.fbx",
	health = 240,
	sight = 5,
	attackPower = 28,
	accuracy = 20,
	coolDown = { 0.5, 1 },
	evasion = 30,
	exp = 265,
	lightName = "light1",
	lightColor = vec(1.5, 1.0, 0.5),
	lightBrightness = 7,
	lightRange = 1.5,
	healthIncrement = 30,
	attackPowerIncrement = 5,
	brain = "Melee",
	onDealDamage = function(self, champion, damage)
		if math.random() <= 0.45 then
			champion:setConditionCumulative("poison", 50)
		end
	end,
}





















