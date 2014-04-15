mob/var
	//Level of player/mob.
	lvl=1
	//Exp/the amount of EXP you need to level up again, respectively.
	exp=0
	nxp=32
	//Strength, defense!
	str=1
	def=2
	//Health.
	maxHP=16
	HP=16
	//Upgrade points for strength/defense!
	upgPnt=0
	class="Warrior"
	attacking=0
	dBoost=1
	sBoost=1
	money=32
	autoGet=0
	musicEnabled=0
	kills=0
	killsBetweenUpdates=0
	//damageTime=0
	obj/Equipment
		Shoes
		Pants
		Shirt
		Hand
		Hat

var/const/Pants_Layer=4	//pants are lowest because sometimes shoes come above your pants
var/const/Shoes_Layer=5	//shoes render above pants, derp
var/const/Shirt_Layer=6	//shirts sometimes come down over pants and shoes
var/const/Hand_Layer=7	//held items over shirts, pants, etc
var/const/Hat_Layer=7	//hats over shirts, duh

obj/Equipment
	var/Slot	//we'll use this to determine where to equip to
	var/def=0
	var/str=0
	var/base_state=0
	shirts	//this allows you to create multiple types of shirts
		Slot="Shirt"	//make sure you set the slot to match the variables above!
		layer=Shirt_Layer	//set its layer to the pre-defined Shirt Layer
		RedShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="red"
			base_state="red"
		OrangeShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="orange"
			base_state="orange"
		YellowShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="yellow"
			base_state="yellow"
		LimeShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="lime"
			base_state="lime"
		GreenShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="green"
			base_state="green"
		CyanShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="cyan"
			base_state="cyan"
		BlueShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="blue"
			base_state="blue"
		PurpleShirt
			def=0.1	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="purple"
			base_state="purple"
		RedChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="redArmor"
			base_state="redArmor"
		OrangeChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="orangeArmor"
			base_state="orangeArmor"
		YellowChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="yellowArmor"
			base_state="yellowArmor"
		LimeChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="limeArmor"
			base_state="limeArmor"
		GreenChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="greenArmor"
			base_state="greenArmor"
		CyanChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="cyanArmor"
			base_state="cyanArmor"
		BlueChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="blueArmor"
			base_state="blueArmor"
		PurpleChestplate
			def=0.25	//how much defense this will add when equipped
			icon='shirts.dmi'	//sets the icon for whatever
			icon_state="purpleArmor"
			base_state="purpleArmor"
	pants
		Slot="Pants"
		layer=Pants_Layer
		RedPants
			def=0.1
			icon='pants.dmi'
			icon_state="red"
			base_state="red"
		OrangePants
			def=0.1
			icon='pants.dmi'
			icon_state="orange"
			base_state="orange"
		YellowPants
			def=0.1
			icon='pants.dmi'
			icon_state="yellow"
			base_state="yellow"
		LimePants
			def=0.1
			icon='pants.dmi'
			icon_state="lime"
			base_state="lime"
		GreenPants
			def=0.1
			icon='pants.dmi'
			icon_state="green"
			base_state="green"
		CyanPants
			def=0.1
			icon='pants.dmi'
			icon_state="cyan"
			base_state="cyan"
		BluePants
			def=0.1
			icon='pants.dmi'
			icon_state="blue"
			base_state="blue"
		PurplePants
			def=0.1
			icon='pants.dmi'
			icon_state="purple"
			base_state="purple"
		RedGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="redArmor"
			base_state="redArmor"
		OrangeGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="orangeArmor"
			base_state="orangeArmor"
		YellowGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="yellowArmor"
			base_state="yellowArmor"
		LimeGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="limeArmor"
			base_state="limeArmor"
		GreenGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="greenArmor"
			base_state="greenArmor"
		CyanGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="cyan"
			base_state="cyan"
		BlueGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="blueArmor"
			base_state="blueArmor"
		PurpleGreaves
			def=0.25
			icon='pants.dmi'
			icon_state="purpleArmor"
			base_state="purpleArmor"
	hats	//this allows you to create multiple types of shirts
		Slot="Hat"	//make sure you set the slot to match the variables above!
		layer=Hat_Layer	//set its layer to the pre-defined Shirt Layer
		RedHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="red"
			base_state="red"
		OrangeHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="orange"
			base_state="orange"
		YellowHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="yellow"
			base_state="yellow"
		LimeHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="lime"
			base_state="lime"
		GreenHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="green"
			base_state="green"
		CyanHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="cyan"
			base_state="cyan"
		BlueHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="blue"
			base_state="blue"
		PurpleHat
			def=0.1	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="purple"
			base_state="purple"
		RedHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="redArmor"
			base_state="redArmor"
		OrangeHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="orangeArmor"
			base_state="orangeArmor"
		YellowHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="yellowArmor"
			base_state="yellowArmor"
		LimeHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="limeArmor"
			base_state="limeArmor"
		GreenHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="greenArmor"
			base_state="greenArmor"
		CyanHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="cyanArmor"
			base_state="cyanArmor"
		BlueHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="blueArmor"
			base_state="blueArmor"
		PurpleHelm
			def=0.25	//how much defense this will add when equipped
			icon='hats.dmi'	//sets the icon for whatever
			icon_state="purpleArmor"
			base_state="purpleArmor"
	shoes	//this allows you to create multiple types of shirts
		Slot="Shoes"	//make sure you set the slot to match the variables above!
		layer=Shoes_Layer	//set its layer to the pre-defined Shirt Layer
		RedShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="red"
			base_state="red"
		OrangeShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="orange"
			base_state="orange"
		YellowShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="yellow"
			base_state="yellow"
		LimeShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="lime"
			base_state="lime"
		GreenShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="green"
			base_state="green"
		CyanShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="cyan"
			base_state="cyan"
		BlueShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="blue"
			base_state="blue"
		PurpleShoes
			def=0.1	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="purple"
			base_state="purple"
		RedBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="redArmor"
			base_state="redArmor"
		OrangeBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="orangeArmor"
			base_state="orangeArmor"
		YellowBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="yellowArmor"
			base_state="yellowArmor"
		LimeBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="limeArmor"
			base_state="limeArmor"
		GreenBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="greenArmor"
			base_state="greenArmor"
		CyanBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="cyanArmor"
			base_state="cyanArmor"
		BlueBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="blueArmor"
			base_state="blueArmor"
		PurpleBoots
			def=0.25	//how much defense this will add when equipped
			icon='shoes.dmi'	//sets the icon for whatever
			icon_state="purpleArmor"
			base_state="purpleArmor"
	swords	//this allows you to create multiple types of swords
		Slot="Hand"	//make sure you set the slot to match the variables above!
		layer=Hand_Layer	//set its layer to the pre-defined Sword Layer
		RedSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="red"
			base_state="red"
		OrangeSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="orange"
			base_state="orange"
		YellowSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="yellow"
			base_state="yellow"
		LimeSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="lime"
			base_state="lime"
		GreenSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="green"
			base_state="green"
		CyanSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="cyan"
			base_state="cyan"
		BlueSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="blue"
			base_state="blue"
		PurpleSword
			str=1	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="purple"
			base_state="purple"
		RedSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="redSteel"
			base_state="redSteel"
		OrangeSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="orangeSteel"
			base_state="orangeSteel"
		YellowSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="yellowSteel"
			base_state="yellowSteel"
		LimeSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="limeSteel"
			base_state="limeSteel"
		GreenSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="greenSteel"
			base_state="greenSteel"
		CyanSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="cyanSteel"
			base_state="cyanSteel"
		BlueSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="blueSteel"
			base_state="blueSteel"
		PurpleSteelSword
			str=2	//strength boost of weapon
			icon='swords.dmi'	//sets the icon for whatever
			icon_state="purple"
			base_state="purple"
	verb
		get()
			set src in oview(0)
			usr << "You obtain a [src]"
			Move(usr)
		drop()
			usr << "You toss off a [src]"
			Move(usr.loc)
			src.remove()
		equip()
			if(!src.Slot || !(src.Slot in usr.vars))	return	//just incase the creator doesnt set a slot <.<
			var/obj/Equipment/CurEQ=usr.vars["[src.Slot]"]	//check their current Slot Equipment
			if(CurEQ)	//if they already have something equipped there, UnEquip it for them
				if(CurEQ==src)	//if theyre already wearing this exact equipment
					return	//stop the code, dont bother re-equipping it
				CurEQ.remove()
			usr.dBoost+=src.def	//add the equipments stats to the player's
			usr.sBoost+=src.str
			usr.overlays+=src	//display on their overlays
			usr<<"You equip the [src.name]."	//basic equip message
			usr.vars["[src.Slot]"]=src	//set their variable to the equipment
		remove()
			if(!src.Slot || !(src.Slot in usr.vars))	return
			if(usr.vars["[src.Slot]"]==src)	//if they do have THIS item eqiupped
				usr.dBoost-=src.def	//Remove the defense when they stop wearing it
				usr.sBoost-=src.str
				usr<<"You de-equip the [src.name]."
				usr.overlays-=usr.vars["[src.Slot]"]	//remove it from their overlays
				usr.vars["[src.Slot]"]=null	//then set their slot back to empty
			else
				usr<<"You aren't wearing this item."