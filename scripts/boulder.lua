cloneObject{
       name = "party",
       baseObject = "party",
	onProjectileHit = function(champion, projectile, amount)
		if projectile.name == "boulder" then
			party:playScreenEffect("damage_screen")
			shootProjectile("boulder",party.level,party.x,party.y,party.facing, 3,0,0,0,10,0,1000,party,false)
			damageTile(party.level, party.x, party.y, projectile.facing, 6, "physical", 9999)
		end
		return true
	end,
       
 }