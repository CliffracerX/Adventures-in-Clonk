mob/verb
	say(t as text)
		world<<"<b>[src]:</b> [t]"

	who()
		var/counter=0
		for(var/mob/player/M in world)
			counter+=1
			usr<<"(Level [M.lvl] [M.class], [M.HP]/[M.maxHP]) [M]"
		src<<"<b>[counter] Players Online"

	save()
		src.saveProc()
	load()
		src.loadProc()
	//change_name(name as text)
	//	src.name = name
	//change_icon(icon as icon)
		//src.icon = icon
	musicToggle()
		if(src.musicEnabled==1)
			src.musicEnabled=0
		else
			src.musicEnabled=1
	attack()
		set hidden=1	//this verb is macroed in the macro part of the Interface.dmf file
		var/image
			new_image
		new_image=new
		new_image.icon='effects.dmi'
		new_image.icon_state="attack"
		if(usr.attacking)	return
		usr.attacking=1
		overlays+=new_image
		view(10,src) << sound('attack.wav')
		//usr.icon_state="PlayerAttack"
		spawn(4)
			if(usr)
				usr.attacking=0
				overlays-=new_image
//				for(var/o in usr.overlays)
//					o="[o]Attack"
		//flick("[usr.icon_state]Attack",usr)	//this can be used to make the character look like their attacking
		for(var/mob/player in get_step(usr, usr.dir))	//finds any mobsters in front of the player, to destroy.
			var/damage = (usr.str*usr.sBoost)-(player.def*player.dBoost)	//a simple damage calculation
			damage=max(0,damage+rand(-1,1))	//make sure damage isnt negative and varry it a little
			if(rand(1, (player.def*player.dBoost)-(usr.str*usr.sBoost))==1)
				damage+=1
			if(player!=usr)
				player.HP-=damage	//subtract the damage from HP
				if(damage>0)
					player.showDmg()
					view(10,player) << sound('damage.wav')
				//mob.damageShow(damage,200,0,0)	//flashes the damage on the screen
				//flick("[usr.overlays[0].icon_state]Attack",usr.overlays[0])	//this can be used to make the character look like their attacking
				//flick("[usr.overlays[0].icon_state]Attack",usr.overlays[0])	//this can be used to make the character look like their attacking
				if(player.deathCheck(usr))	//check if you killed the unit
					usr.exp+=((player.maxHP)+(player.str*player.sBoost))+(player.def*player.dBoost)
					usr.levelCheck()

					usr.kills+=1
					if(usr.kills>500)
						world.SetMedal("Slayer", usr)
					if(usr.kills>5000)
						world.SetMedal("Vaporizer", usr)
					partycheck()
					usr.killsBetweenUpdates+=1
					if(usr.killsBetweenUpdates>128)
						world.SetMedal("EXTERMINAAATE!", usr)

					player<<"You died.  Aw."
					if(!player.key)
						if(rand(1, 3)==2)
							usr.HP+=4
						if(usr.HP>usr.maxHP)
							usr.HP=usr.maxHP
						usr.money+=player.money
						del player
					else
						player.HP=player.maxHP
						player.loc=locate(5,5,1)
						if(rand(1, 3)==2)
							usr.HP+=4
						if(usr.HP>usr.maxHP)
							usr.HP=usr.maxHP
		for(var/mob/monster/M in get_step(usr,usr.dir))	//finds any mobsters in front of the player, to destroy.
			var/damage = (usr.str*usr.sBoost)-(M.def*M.dBoost)	//a simple damage calculation
			damage=max(0,damage+rand(-1,1))	//make sure damage isnt negative and varry it a little
			if(rand(1, (M.def*M.dBoost)-(usr.str*usr.sBoost))==1)
				damage+=1
			if(M!=usr)
				M.HP-=damage	//subtract the damage from HP
				if(damage>0)
					M.showDmg()
					view(10,M) << sound('damage.wav')
				//mob.damageShow(damage,200,0,0)	//flashes the damage on the screen
				//flick("[usr.overlays[0].icon_state]Attack",usr.overlays[0])	//this can be used to make the character look like their attacking
				//flick("[usr.overlays[0].icon_state]Attack",usr.overlays[0])	//this can be used to make the character look like their attacking
				if(M.deathCheck(usr))	//check if you killed the unit
					usr.exp+=((M.maxHP)+((M.str*M.sBoost)))+((M.def*M.dBoost)/4)
					usr.levelCheck()
					if(rand(1, 3))
						usr.HP+=4
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr.money+=M.money
					usr.kills+=1
					if(usr.kills>500)
						world.SetMedal("Slayer", usr)
					if(usr.kills>5000)
						world.SetMedal("Vaporizer", usr)
					partycheck()
					usr.killsBetweenUpdates+=1
					if(usr.killsBetweenUpdates>128)
						world.SetMedal("EXTERMINAAATE!", usr)
					del M
					//zombie<<"You died.  Aw."
		for(var/mob/buildable in get_step(usr,usr.dir))	//finds any mobsters in front of the player, to destroy.
			var/damage = (usr.str*usr.sBoost)-(buildable.def*buildable.dBoost)	//a simple damage calculation
			damage=max(0,damage+rand(-1,1))	//make sure damage isnt negative and varry it a little
			if(rand(1, (buildable.def*buildable.dBoost)-(usr.str*usr.sBoost))==1)
				damage+=1
			if(buildable!=usr)
				buildable.HP-=damage	//subtract the damage from HP
				if(damage>0)
					buildable.showDmg()
					view(10,buildable) << sound('damage.wav')
				//mob.damageShow(damage,200,0,0)	//flashes the damage on the screen
				//flick("[usr.overlays[0].icon_state]Attack",usr.overlays[0])	//this can be used to make the character look like their attacking
				//flick("[usr.overlays[0].icon_state]Attack",usr.overlays[0])	//this can be used to make the character look like their attacking
				if(buildable.deathCheck(usr))	//check if you killed the unit
					del buildable
					//zombie<<"You died.  Aw."