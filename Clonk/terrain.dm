turf
	icon='terrain.dmi'
	general	//categorizing your atoms will make mapping a much easier process
		grass
			icon_state="Grass"
		dirt
			icon_state="Dirt"
		bush
			icon_state="Bush"
			density=1	//makes it so players cant walk on top of the bush! makes sense right?
		floor
			icon_state="Floor"
		bricks
			icon_state="Bricks"
			density=1
		roof
			icon_state="Roof"
			density=1
		dBrick1
			icon_state="DungeonBrick1"
			density=1
		dFloor1
			icon_state="DungeonFloor1"
		sand
			icon_state="Sand"
		sandBush
			icon_state="SandBush"
			density=1
		dungeonBush
			icon_state="BushDungeon"
			density=1
		water
			icon_state="Water"
			density=1
	special
		monsterBlockGrass
			icon_state="Grass"
			density=1
			Enter(mob/M)	//this gets ran when somebody tries to enter this location
				if(ismob(M))
					if(!istype(M,/mob/monster))
						return 1	//returning 1 here will automaticaly allow any non monsters to enter
		monsterBlockDirt
			icon_state="Dirt"
			density=1
			Enter(mob/M)	//this gets ran when somebody tries to enter this location
				if(ismob(M))
					if(!istype(M,/mob/monster))
						return 1	//returning 1 here will automaticaly allow any non monsters to enter
		monsterBlockFloor
			icon_state="Floor"
			density=1
			Enter(mob/M)	//this gets ran when somebody tries to enter this location
				if(ismob(M))
					if(!istype(M,/mob/monster))
						return 1	//returning 1 here will automaticaly allow any non monsters to enter
		monsterBlockDFloor1
			icon_state="DungeonFloor1"
			density=1
			Enter(mob/M)	//this gets ran when somebody tries to enter this location
				if(ismob(M))
					if(!istype(M,/mob/monster))
						return 1	//returning 1 here will automaticaly allow any non monsters to enter
		monsterBlockSand
			icon_state="Sand"
			density=1
			Enter(mob/M)	//this gets ran when somebody tries to enter this location
				if(ismob(M))
					if(!istype(M,/mob/monster))
						return 1	//returning 1 here will automaticaly allow any non monsters to enter