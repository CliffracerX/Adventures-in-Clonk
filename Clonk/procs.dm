proc
	listCheck(var/Object,var/List)	//look for Object in List
		if(Object in List)	return 1	//if found return 1
		else return 0	//otherwise return a 0
	respawnWorld()	//this proc is called in World/New() in the Main.dm File
		world.Repop()	//this built in BYOND proc will respawn anything from runtime that was deleted
		//runtime is when the game is started (when the files are first run)
		//basicaly anything thats in the game when it first starts, excludes anything added during gameplay)
		spawn(900)	respawnWorld()	//this will call the proc again after 60 seconds
		//because this proc calls itself it will loop for eternity! or at least until the game dies
mob/proc
	levelCheck()
		if(src.exp>=src.nxp)
			src.exp-=src.nxp
			src.nxp+=4*src.lvl
			src.lvl+=1
			src.upgPnt+=1
			src<<"You are now Level [src.lvl], and recieved an upgrade point!"
			if(src.lvl>50)
				world.SetMedal("Overpowered", usr)
			if(src.lvl>25)
				world.SetMedal("Strong", usr)
	showDmg()
		var/image
			new_image
		new_image=new
		new_image.icon='effects.dmi'
		new_image.icon_state="damaged"
		overlays+=new_image
		spawn(4)
			overlays-=new_image
	updateScores()
		var/list/new_records = new
		new_records["Level"] = src.lvl
		new_records["Monsters killed"] = src.kills
		new_records["Maximum HP"] = src.maxHP
		new_records["Amount of S"] = src.money
		src.killsBetweenUpdates=0
		if(world.SetScores(key, list2params(new_records)))
			src << "Hey.  Hey you.  Psst.  It's me, the game!  Your level, monsters killed, max HP, and S levels have been recorded."
		else
			src << "Bleh, I can't get to the hub.  Sorry, pal.  It's me, the game.  Your internet may slightly be derping."
		spawn(30*64)
			updateScores()

mob/verb
	//testLvl()
	//	usr.exp+=16
	//	usr.levelCheck()
	upgradeStr()
		if(src.upgPnt>0)
			src.upgPnt-=1
			src.str+=1
	upgradeDef()
		if(src.upgPnt>0)
			src.upgPnt-=1
			src.def+=1
	upgradeHP()
		if(src.upgPnt>0)
			src.upgPnt-=1
			src.maxHP+=4
			src.HP=src.maxHP
	deathCheck()
		if(src.HP<1)
			return 1
			//src<<"You are dead!"
			//src.HP=src.maxHP
			//src.loc=locate(5,5,1)