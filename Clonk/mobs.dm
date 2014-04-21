mob/monster
	//Class="monster"	//placing a variable here will effect all types of mobs created under it
	var/mob/target	//this variable will only exist for Monsters, and is by default typed as a mob
	zombie
		//since the following variables are tabbed in under the Hobgolin, they will only effect this 1 monster
		icon='mobs.dmi'
		icon_state="Zombie"
		money=2	//the gold you set on a monster will determine how much it gives when you kill it
		exp=1	//same goes for exp, the amount you set here will determine how much this monster is worth
		lvl=1	//these next few lines setup the basic stats for the monster
		maxHP=8	//since these variables are already defined elsewhere you dont need to mark them again here
		//var/ExtraVariable=0	//but if you wanted to define a new variable just for this monster you could
		//MaxMP=10
		str=2
		def=1
	blackzombie
		//since the following variables are tabbed in under the Hobgolin, they will only effect this 1 monster
		icon='mobs.dmi'
		icon_state="BlackZombie"
		money=6	//the gold you set on a monster will determine how much it gives when you kill it
		exp=3	//same goes for exp, the amount you set here will determine how much this monster is worth
		lvl=2	//these next few lines setup the basic stats for the monster
		maxHP=24	//since these variables are already defined elsewhere you dont need to mark them again here
		//var/ExtraVariable=0	//but if you wanted to define a new variable just for this monster you could
		//MaxMP=10
		str=8
		def=4
	redzombie
		//since the following variables are tabbed in under the Hobgolin, they will only effect this 1 monster
		icon='mobs.dmi'
		icon_state="RedZombie"
		money=10	//the gold you set on a monster will determine how much it gives when you kill it
		exp=3	//same goes for exp, the amount you set here will determine how much this monster is worth
		lvl=2	//these next few lines setup the basic stats for the monster
		maxHP=32	//since these variables are already defined elsewhere you dont need to mark them again here
		//var/ExtraVariable=0	//but if you wanted to define a new variable just for this monster you could
		//MaxMP=10
		str=16
		def=12
	dzomb1
		//since the following variables are tabbed in under the Hobgolin, they will only effect this 1 monster
		icon='mobs.dmi'
		icon_state="DesertZombie1"
		money=15	//the gold you set on a monster will determine how much it gives when you kill it
		exp=3	//same goes for exp, the amount you set here will determine how much this monster is worth
		lvl=7	//these next few lines setup the basic stats for the monster
		maxHP=96	//since these variables are already defined elsewhere you dont need to mark them again here
		//var/ExtraVariable=0	//but if you wanted to define a new variable just for this monster you could
		//MaxMP=10
		str=24
		def=32
	New()	//this is what happens when a new monster is created
		src.HP=src.maxHP	//sets the monsters HP and MP to max
		spawn()
			src.wander()	//when calling a proc that loops inside another proc you should ALWAYS spawn it
		return ..()	//this allows multiple New() procs to be ran on this mob, but make sure its at the end!
	proc/wander()	//creates a new proc for Monster type mobs named Wander
		while(src)	//will loop as long as this mob exists
			if(src.target)	//if the monster found a target do this
				if(get_dist(src,src.target)>1 && !step_to(src,src.target,1))	//if they cant reach their target
					src.target=null;continue	//then restart the loop without a target
				src.dir=get_dir(src,src.target)	//make them face the target
				src.fight()	//makes the monster attack!(coding shown below)
				if(!listCheck(src.target,oview(5)))	//ListCheck is a proc i created! you can find it in the Procedures.dm file
					//note: placing a ! before an if means you want the oposite result, in this case if src.Target isnt in oview
					src.target=null	//if their target wandered away, then null it out, which sets it to nothing basicaly
				sleep(4)
			else
				step_rand(src)	//will make the monster randomly walk around
				sleep(4)	//then wait a random amount of time before taking another action

			if(!src.target)	//if this mob doesnt already have a target
				for(var/mob/M in oview(5))	//check for any targets within 5 blocks
					if(M.key)	//if any of the mobs around u are a player, then we'll target them
						if(step_to(src,M,1))	//will make sure they can actualy reach the target
							//(note: the step_to proc only knows how to check around dense turfs/areas)
							src.target=M	//this sets the monsters target to the player it found
							sleep(5)
							break	//as soon as it finds a target it can stop looking
	proc/fight()
		for(var/mob/M in get_step(src,src.dir))	//finds any mobs directly in front of the monster
			if(M.key)
				//flick("[src.icon_state]",src)
				var/damage=src.str-(M.def*M.dBoost)	//a simple damage calculation
				damage=max(0,damage+rand(-1,1))	//make sure damage isnt negative and varry it a little
				if(rand(1, (M.def*M.dBoost)-(src.str*src.sBoost))==1)
					damage+=1
				M.HP -= damage	//subtract the damage off the victim's HP
				if(damage>0)
					M.showDmg()
					view(10,M) << sound('damage.wav')
				//M.DamageShow(damage,200,0,0)	//flashes the damage on the screen
				if(M.deathCheck(src))	//runs the DeathCheck proc on the victim of the attack
					M.HP=M.maxHP
					M.loc=locate(5,5,1)
					M<<"You died.  Aw."
				//(The DeathCheck proc can be found in the Procedures.dm file)
mob/buildables
	barricade
		//since the following variables are tabbed in under the Hobgolin, they will only effect this 1 monster
		icon='buildables.dmi'
		icon_state="Barricade"
		money=0	//the gold you set on a monster will determine how much it gives when you kill it
		exp=1	//same goes for exp, the amount you set here will determine how much this monster is worth
		lvl=1	//these next few lines setup the basic stats for the monster
		maxHP=512	//since these variables are already defined elsewhere you dont need to mark them again here
		//var/ExtraVariable=0	//but if you wanted to define a new variable just for this monster you could
		//MaxMP=10
		str=2
		def=1
	New()
		src.HP=src.maxHP