
    cloneObject{
      name = "party",
      baseObject = "party",
      onPickUpItem  = function(party,item)
        if item.name == "blue_gem_fake" then
          return false
		elseif item.name == "skull_horned_fake" then
         return false  
		elseif item.name == "skull_bloody_fake" then
         return false 
		elseif item.name == "skull_blood_soaked_fake" then
         return false 
		elseif item.name == "skull_stone_fake" then
         return false 
		elseif item.name == "skull_fake" then
         return false 
		elseif item.name == "green_gem_fake" then
         return false 
		 elseif item.name == "itm_gem_green_01_fake" then
         return false 
		 elseif item.name == "itm_gem_blue_01_fake" then
         return false 
		 elseif item.name == "itm_gem_red_01_fake" then
         return false 
		 elseif item.name == "itm_gem_yellow_01_fake" then
         return false 
		 elseif item.name == "itm_gem_white_01_fake" then
         return false 
		 elseif item.name == "itm_gem_white_02_fake" then
         return false 
		 elseif item.name == "itm_gem_white_06_fake" then
         return false 
        else
          return true
        end
      end,
	onMove = function( self , dir )
		movingAltarScript.MoveAltar( self , dir )
		for i = 1, 4 do 
			if (party:getChampion(i):getCondition("paralyzed") > 0) then
				hudPrint("You're paralyzed!")
				return false;
			end
		end	
        return partyScript.canMove( self , dir ) 
   end,

   onAttack = function( self , weapon )
        return partyScript.canAttack( self , weapon )
   end,  
   onProjectileHit = function(champ, proj, damage, damtype)
			if proj.name == "boulder" then
			party:playScreenEffect("damage_screen")
			shootProjectile("boulder",party.level,party.x,party.y,party.facing, 3,0,0,0,10,0,1000,party,false)
			damageTile(party.level, party.x, party.y, proj.facing, 6, "physical", 9999)
			end
			
			
			
			if ((aiswitcher ~= nil) and (aiswitcher.onTick ~= nil)) then 
				return aiswitcher.onPartyProjectileHit(champ, proj, damage, damtype)
			end	
return true			
		end,

    }
	





	
	