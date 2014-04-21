obj/items
	//var/Slot	//we'll use this to determine where to equip to
	//var/def=0
	//var/str=0
	var/base_state=0
	potions	//this allows you to create multiple types of shirts
		//Slot="Shirt"	//make sure you set the slot to match the variables above!
		//layer=Shirt_Layer	//set its layer to the pre-defined Shirt Layer
		potion1
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="HealthPotion1"
			base_state="HealthPotion1"
			verb
				drink()
					usr.HP+=4
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You feel reinvigorated!  (+4 health, up to max)"
					del src
		potion2
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="HealthPotion2"
			base_state="HealthPotion2"
			verb
				drink()
					usr.HP+=8
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You feel reinvigorated!  (+8 health, up to max)"
					del src
	flags	//this allows you to create multiple types of shirts
		//Slot="Shirt"	//make sure you set the slot to match the variables above!
		//layer=Shirt_Layer	//set its layer to the pre-defined Shirt Layer
		rflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="rFlag"
			base_state="rFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
		oflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="oFlag"
			base_state="oFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
		yflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="yFlag"
			base_state="yFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
		lflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="lFlag"
			base_state="lFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
		gflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="gFlag"
			base_state="gFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
		cflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="cFlag"
			base_state="cFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
		bflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="bFlag"
			base_state="bFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
		pflag
			//def=0.1	//how much defense this will add when equipped
			icon='items.dmi'	//sets the icon for whatever
			icon_state="pFlag"
			base_state="pFlag"
			verb
				destroy()
					usr.HP+=64
					if(usr.HP>usr.maxHP)
						usr.HP=usr.maxHP
					usr << "You destroy an enemy flag, and feel re-invigorated for your victory!"
					del src
	buildables	//this allows you to create multiple types of shirts
		//Slot="Shirt"	//make sure you set the slot to match the variables above!
		//layer=Shirt_Layer	//set its layer to the pre-defined Shirt Layer
		barricade
			//def=0.1	//how much defense this will add when equipped
			icon='buildables.dmi'	//sets the icon for whatever
			icon_state="Barricade"
			base_state="Barricade"
			verb
				build()
					new /mob/buildables/barricade(usr.loc)
					usr << "You build the barricade."
					del src
	verb
		get()
			set src in oview(0)
			usr << "You obtain a [src]"
			Move(usr)
		drop()
			usr << "You toss off a [src]"
			//src.remove()
			Move(usr.loc)