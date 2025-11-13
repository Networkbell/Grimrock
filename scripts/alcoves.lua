defineObject{
	name = "wall_shield_slot",
	class ="Alcove",
	anchorPos = vec(0.02, 1.44, -0.05),
	anchorRotation = vec(90,0,270),
	targetPos = vec(0,0, 0),
	targetSize = vec(0.1, 0.8, 0.2),
	onInsertItem = function(self, item)
     local allowed = {"round_shield"}
     for i = 1, #allowed do
       if item.name == allowed[i] then
          return item.name == allowed[i] and self:getItemCount() == 0
       end
     end   
end,
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}

defineObject{
   name = "wall_hook_alcove",
   class = "Alcove",
  anchorPos = vec(0, 1.50, -0.1),
   targetPos = vec(0, 1.50, -0.1),
   targetSize = vec(0.6, 0.5, 0.6),
   model = "assets/models/env/metal_hooks_wall.fbx",
	onInsertItem = function(self, item)
		return item.name == "long_sword" and self:getItemCount() == 0 
or item.name == "shaman_staff" and self:getItemCount() == 0
or item.name == "nex_sword" and self:getItemCount() == 0
or item.name == "dismantler" and self:getItemCount() == 0
or item.name == "lightning_blade" and self:getItemCount() == 0
or item.name == "lightning_blade_empty" and self:getItemCount() == 0
or item.name == "legionary_spear" and self:getItemCount() == 0
or item.name == "fire_blade" and self:getItemCount() == 0
or item.name == "fire_blade_empty" and self:getItemCount() == 0
	end,
   placement = "wall",
   replacesWall = false,
   editorIcon = 92,
}

defineObject{
	name = "goromorg_slot",
	class ="Alcove",
	anchorPos = vec(0.02, 1.75, 0.12),
	targetPos = vec(0,1.7, 0),
	targetSize = vec(0.1, 0.8, 0.2),
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}
defineObject{
	name = "mouth_socket_weapon",
	class = "Alcove",
	anchorPos = vec(0, 1.1, -0.38),
	anchorRotation = vec(0,90,0),
	targetPos = vec(0, 1.1, -0.38),
	targetSize = vec(0.3, 0.3, 0.3),
	placement = "wall",
	onInsertItem = function(self, item)
    	 local allowed = {"long_sword", "shaman_staff", "nex_sword", "dismantler", "lightning_blade",
                  "lightning_blade_empty", "legionary_spear", "fire_blade", "fire_blade_empty", "dagger", "whitewood_wand",
"ancient_axe", "great_axe", "torch", "torch_everburning", "arrow", "cold_arrow", "cold_quarrel", "fire_arrow", "fire_quarrel", "poison_arrow",
"poison_quarrel", "quarrel", "shock_arrow", "shock_quarrel", "assassin_dagger", "battle_axe","cudgel","fist_dagger", "knoffer",
"throwing_knife", "knife", "machete","shuriken","venom_edge", "venom_edge_empty", }
     for i = 1, #allowed do
       if item.name == allowed[i] then
          return item.name == allowed[i] and self:getItemCount() == 0
       end
     end   
end,
	editorIcon = 92,
}

defineObject{
	name = "waltar",
	class = "Alcove",
	model = "assets/models/env/altar.fbx",
	replacesWall = false,
	anchorPos = vec(0, 0.87, -0.25),
	targetPos = vec(0,0.88,-0.25),
	targetSize = vec(0.6, 0.5, 0.6),
	placement = "wall",
	editorIcon = 8,
}

defineObject{
	name = "receptor_alcove",
	class = "Alcove",
	model = "assets/models/env/spell_receptor.fbx",
	replacesWall = false,
	anchorPos = vec(0, 1, -0.17),
	targetPos = vec(0,0.88,-0.25),
	targetSize = vec(0.6, 0.5, 0.6),
	placement = "wall",
	editorIcon = 92,
}

defineObject{ --this can hold just about any item. It will float in midair and show it's broad side to the y axis.
	name = "floating_sword_socket",
	class = "Alcove",
	anchorPos = vec(0, 1.1, 1),
	anchorRotation = vec(90,0,90),
	targetPos = vec(0, 1.1, 0),
	targetSize = vec(0.0, 0.0, 0.0),
	placement = "wall",
	editorIcon = 100,
}

defineObject{ --made by Batty
      name = "prison_bench_alcove",
      class = "Alcove",
      anchorPos = vec(0, 0.65, -0.2),
      targetPos = vec(0, 1, 0),
      targetSize = vec(0.6, 0.3, 0.6),
      model = "assets/models/env/prison_chair.fbx",
      placement = "wall",
      replacesWall = false,
      editorIcon = 92,
}

defineObject{
   name = "dungeon_catacomb_alcove",
   class = "Alcove",
   anchorPos = vec(0, 0.75, 0.2),
   targetPos = vec(0,1.3,0),
   targetSize = vec(0.6, 0.5, 0.6),
   model = "assets/models/env/dungeon_catacomb_empty.fbx",
   placement = "wall",
   replacesWall = true,
   editorIcon = 92,
}

    defineObject{
          name = "dungeon_catacomb_alcove",
          class = "Alcove",
          anchorPos = vec(0, 0.75, 0.3),
          targetPos = vec(0, 1.3, 0),
          targetSize = vec(0, 0.5, 0.6),
          model = "assets/models/env/dungeon_catacomb_empty.fbx",
          placement = "wall",
          replacesWall = true,
          editorIcon = 92,
    }

    defineObject{ --made by Batty
          name = "dungeon_catacomb_alcove_left",
          class = "Alcove",
          anchorPos = vec(-0.2, 0.75, 0.3),
          targetPos = vec(-0.2, 0.85, 0.2),
          targetSize = vec(0.8, 0.5, 0.6),
          placement = "wall",
          replacesWall = false,
          editorIcon = 92,
    }

    defineObject{ --made by Batty
          name = "dungeon_catacomb_alcove_right",
          class = "Alcove",
          anchorPos = vec(0.2, 0.75, 0.3),
          targetPos = vec(0.2, 0.85, 0.2),
          targetSize = vec(0.8, 0.5, 0.6),
          placement = "wall",
          replacesWall = false,
          editorIcon = 92,
    }

defineObject{ --made by Batty
      name = "dungeon_catacomb_alcove_upper",
      class = "Alcove",
      anchorPos = vec(0.5, 1.85, 0.3),
      targetPos = vec(0.5, 1.70, 0.2),
      targetSize = vec(0.6, 0.5, 0.6),
      placement = "wall",
      replacesWall = false,
      editorIcon = 92,
}

    defineObject{
       name = "dungeon_wall_shelf",
       class = "Alcove",
       anchorPos = vec(0, 1.0, -0.2),
       targetPos = vec(0, 1.0, -0.2),
       targetSize = vec(0.3, 0.3, 0.3),
       model = "assets/models/env/wall_fountain.fbx",
       placement = "wall",
       replacesWall = false,
       editorIcon = 92,
    }

    defineObject{
       name = "statue_alcove_spear_helmet",
       class = "Alcove",
       anchorPos = vec(0.027, 2.115, 0.225),
       anchorRotation = vec(13,1,1.9),
       targetPos = vec(0.027,2.13, 0.25),
       targetSize = vec(0.3, 0.3, 0.3),
       model = "assets/models/env/temple_gladiator_statue_spear.fbx",
       onInsertItem = function(self, item)
       return item.name == "legionary_helmet" and self:getItemCount() == 0
       end,
       placement = "wall",
       replacesWall = true,
       editorIcon = 92,
    }

    defineObject{
       name = "statue_alcove_spear_shield",
       class = "Alcove",
       anchorPos = vec(0.34, 1.56, 0.18),
       anchorRotation = vec(22,356,88.7),
       targetPos = vec(0.34,1.56, 0.18),
       targetSize = vec(0.3, 0.3, 0.3),
       onInsertItem = function(self, item)
       return item.name == "legionary_shield" and self:getItemCount() == 0
       end,
       placement = "wall",
       replacesWall = true,
       editorIcon = 92,
    }
defineObject{ --made by crisman
name = "statue_alcove_spear_spear",
class = "Alcove",
anchorPos = vec(-0.354, 1.75, -0.0475),
anchorRotation = vec(145,-5.5,-99.11),
targetPos = vec(-0.4,1.55, 0.0),
targetSize = vec(0.1, 0.8, 0.2),
onInsertItem = function(self, item)
return item.name == "legionary_spear" and self:getItemCount() == 0
end,
placement = "wall",
replacesWall = true,
editorIcon = 92,
}
    defineObject{
        name = "temple_gladiator_statue_alcove_sword",
        class = "Alcove",
        model = "assets/models/env/temple_gladiator_statue_dismantler.fbx",
    anchorPos = vec(-0.318, 1.424, -0.08),
    anchorRotation = vec(35,253,148),
    targetPos = vec(-0.318,1.424, -0.08),
    targetSize = vec(0.1, 0.8, 0.2),
    onInsertItem = function(self, item)
    return item.name == "dismantler" and self:getItemCount() == 0
    end,
        placement = "wall",
        replacesWall = true,
       statueBase = true,
       editorIcon = 92,
    }
defineObject{--made by crisman
name = "statue_alcove_sword_helmet",
class = "Alcove",
anchorPos = vec(-0.055, 1.99, 0.167),
anchorRotation = vec(13,0,0),
targetPos = vec(0.027,2.13, 0.25),
targetSize = vec(0.3, 0.3, 0.3),
model = "assets/models/env/temple_gladiator_statue_dismantler.fbx",
onInsertItem = function(self, item)
return item.name == "helmet_valor" and self:getItemCount() == 0
end,
placement = "wall",
replacesWall = true,
editorIcon = 92,
}

defineObject{ --place on a metal blockage. facing matters.
	name = "shaft_socket",
	class = "Alcove",
	anchorPos = vec(0.21, 1.3, 0.6),
	anchorRotation = vec(0,30,75),
	targetPos = vec(0.21, 1.3, 0.6),
	targetSize = vec(1,1, 1),
	placement = "wall",
	onInsertItem = function(self, item)
		return item.name == "machine_junk5" and self:getItemCount() == 0
	end,
	editorIcon = 92,
}

cloneObject{ --made by crisman. Place on top of a floor drainage
	name = "drainage_alcove",
	baseObject = "eye_socket_left",
	anchorPos = vec(0, -2.5, -1.2),
	anchorRotation = vec(0, 0, 0),
	targetPos = vec(0, 0.25, 0),
	targetSize = vec(0.3, 0.3, 0.3),
	onInsertItem = function (self, item)
		if item.name == "legionary_spear" then
	for i in self:containedItems() do
		spawn(i.name, party.level, party.x, party.y, party.facing)
	i:destroy()
return
	end
	if self:getItemCount() == 0 then
		self:destroy()
end
	end
	return false
end,
}

  defineObject{
       name = "goromorg_shield_slot",
       class ="Alcove",
       anchorPos = vec(0.02, 1.44, 0.12),
       anchorRotation = vec(90,0,270),
       targetPos = vec(0,1.7, 0),
       targetSize = vec(0.1, 0.8, 0.2),
       onInsertItem = function(self, item)
         local allowed = {"shield_valor", "legionary_shield","shield_elements","heavy_shield"}
         for i = 1, #allowed do
           if item.name == allowed[i] then
              return item.name == allowed[i] and self:getItemCount() == 0
           end
         end   
    end,
       placement = "wall",
       replacesWall = false,
       editorIcon = 92,
    }

defineObject{ --made by crisman
name = "dragon_socket",
class = "Alcove",
anchorPos = vec(0.0, 1.49, 0.65),
targetPos = vec(0.0, 1.35, 0.35),
targetSize = vec(0.3, 0.3, 0.3),
placement = "wall",
onInsertItem = function(self, item)
return (item.name == "magic_orb" or item.name == "zhandul_orb" or

item.name == "machine_part_north") and self:getItemCount() == 0
end,
editorIcon = 92,
}

    defineObject{ --made by Deadlylama
          name = "custom_daemon_head_alcove",
          class = "Alcove",
          anchorPos = vec(0, 1, -0.4),
          targetPos = vec(0, 1, 0),
          targetSize = vec(0.3, 0.3, 0.3),
          model = "assets/models/env/daemon_head.fbx",
        
         onInsertItem = function(self, item)
    return item.name == "rock" and self:getItemCount() == 0
        or item.name == "red_gem" and self:getItemCount() == 0
        or item.name == "blue_gem" and self:getItemCount() == 0
        or item.name == "golden_orb" and self:getItemCount() == 0
        or item.name == "magic_orb" and self:getItemCount() == 0
        or item.name == "zhandul_orb" and self:getItemCount() == 0
        end,
          
          placement = "wall",
          replacesWall = false,
          editorIcon = 92,
    }



defineObject{
name = "hook_pillar_wall",
class = "Alcove",
model = "mod_assets/models/env/shield_hook.fbx",
anchorPos = vec(0, 1.55, -0.1),
anchorRotation = vec(90, 0, 90),
targetPos = vec(0, 1.6, 0),
targetSize = vec(0.2, 0.2, 0.2),
placement = "wall",
replaceWall = false,
editorIcon = 92,
onInsertItem = function (self, item)
return item.name == "ornate_key" and self:getItemCount() == 0
end,
}

defineObject{
name = "dungeon_wall_drainage_alcove",
model = "assets/models/env/dungeon_wall_drainage.fbx",
class = "Alcove",
anchorPos = vec(0, 0.00, 0.5),
targetPos = vec(0, 0.1, 0),
targetSize = vec(0.3, 0.2, 0.1),
placement = "wall",
replacesWall = true,
editorIcon = 92,
onInsertItem = function(self, item)
  i, j = string.find(item.name, "_key")
  return (i ~= nil) and (j == string.len(item.name)) and (self:getItemCount() == 0)
end,
}

    defineObject{
       name = "dungeon_floor_blockage",
       class = "Blockage",
       model = "assets/models/env/dungeon_floor_01.fbx",
       placement = "floor",
       repelProjectiles = true,
       hitSound = "impact_blade",
       editorIcon = 56,
    }

    defineObject{
       name = "temple_floor_blockage",
       class = "Blockage",
       model = "assets/models/env/temple_floor_01.fbx",
       placement = "floor",
       repelProjectiles = true,
       hitSound = "impact_blade",
       editorIcon = 56,
    }

    defineObject{
       name = "prison_floor_blockage",
       class = "Blockage",
       model = "assets/models/env/prison_floor_01.fbx",
       placement = "floor",
       repelProjectiles = true,
       hitSound = "impact_blade",
       editorIcon = 56,
    }
	
	defineObject{
  name = "note_hook",
  class = "Alcove",
  model = "mod_assets/models/env/shield_hook.fbx",
  anchorPos = vec(0, 1.55, -0.1),
  anchorRotation = vec(90, 0, 0),
  targetPos = vec(0, 1.6, 0),
  targetSize = vec(0.2, 0.2, 0.2),
  placement = "wall",
  replaceWall = false,
  editorIcon = 92,
  onInsertItem = function (self, item)
    return item.name == "note" and self:getItemCount() == 0
  end,
}


defineObject{
   name = "corpse_dagger_slot",
   class ="Alcove",
   anchorPos = vec(-0.035, 0.4, -1.375),
   anchorRotation = vec(0, 315, 0),
   targetPos = vec(-0.035,0.4, -1.375),
   targetSize = vec(0.1, 0.8, 0.2),
   onInsertItem = function(self, item)
     local allowed = {"dagger"}
     for i = 1, #allowed do
       if item.name == allowed[i] then
          return item.name == allowed[i] and self:getItemCount() == 0
       end
     end   
end,
   placement = "wall",
   replacesWall = false,
   editorIcon = 92,
}

defineObject{
   name = "corpse_note",
   class ="Alcove",
   anchorPos = vec(-0.28, 0.417, -1.1),
   anchorRotation = vec(0, 90, 0),
   targetPos = vec(-0.28, 0.417, -1.1),
   targetSize = vec(0.3, 0.3, 0.3),
   onInsertItem = function(self, item)
     local allowed = {"note"}
     for i = 1, #allowed do
       if item.name == allowed[i] then
          return item.name == allowed[i] and self:getItemCount() == 0
       end
     end   
end,
   placement = "wall",
   replacesWall = false,
   editorIcon = 92,
}





defineObject{
   name = "corpse_key_chain",
   class ="Alcove",
   anchorPos = vec(0.225, 0.225, -1.35),
   anchorRotation = vec(130, -30, 45),
   targetPos = vec(0.225, 0.225, -1.35),
   targetSize = vec(0.2, 0.3, 0.2),
   onInsertItem = function(self, item)
     local allowed = {"ornate_key"}
     for i = 1, #allowed do
       if item.name == allowed[i] then
          return item.name == allowed[i] and self:getItemCount() == 0
       end
     end   
end,
   placement = "wall",
   replacesWall = false,
   editorIcon = 92,
}

defineObject{
	name = "waltar_bench_alcove",
	class = "Alcove",
	model = "mod_assets/models/huder_ledge.fbx",
	replacesWall = false,
	anchorPos = vec(0, 0.87, -0.3),
	targetPos = vec(0,0.88,0),
	targetSize = vec(0.6, 0.5, 0.6),
	placement = "wall",
	editorIcon = 8,
}

defineObject{
	name = "goromorg_fourway_slot",
	class ="Alcove",
	anchorPos = vec(0.02, 1.75, 0.50),
	targetPos = vec(0,1.7, 0),
	targetSize = vec(0.1, 0.8, 0.2),
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}

defineObject{
	name = "goromorg_angel_slot",
	class ="Alcove",
	anchorPos = vec(0.02, 1.75, -1),
	targetPos = vec(0,1.7, 0),
	targetSize = vec(0.1, 0.8, 0.2),
	placement = "wall",
	replacesWall = false,
	editorIcon = 92,
}