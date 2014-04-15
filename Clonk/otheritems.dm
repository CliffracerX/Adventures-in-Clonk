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
	verb
		get()
			set src in oview(0)
			usr << "You obtain a [src]"
			Move(usr)
		drop()
			usr << "You toss off a [src]"
			//src.remove()
			Move(usr.loc)