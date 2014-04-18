mob/NPCs
	icon='mobs.dmi'
	New()
		//src.AddName()
		return
	/*Bank_Owner
		icon_state="Banker"
		verb
			Bank()
				set src in oview(1)	//this determines how far away you can be and still talk to this NPC
				switch(input("What can I help you with today?","Banker")in list("Deposit","Withdraw","Balance"))
					//a switch allows you to compare multiple cases from 1 input
					if("Deposit")
						var/Amount = input("You have [usr.Gold] gold. How much do you wish to deposit?","Deposit",usr.Gold) as num
						if(Amount < 0)
							alert("Don't try cheating me!","Banker")	//dont let them deposit less then 0! otherwise theyll rob the bank!
							return
						if(Amount > usr.Gold)
							alert("You don't have that much!", "Deposit")	//cant deposit more than you have right?
							return
						usr << "You deposit [Amount] gold."
						usr.Gold -= Amount	//take the gold from the player
						usr.BankedGold += Amount	//and store it in the bank!
					if("Withdraw")
						var/Amount = input("You have [usr.BankedGold] gold in the Bank. How much do you wish to Withdraw?","Withdraw",usr.BankedGold) as num
						if(Amount < 0)
							alert("Don't try cheating me!","Banker")	//cant take out negative amounts of money
							return
						if(Amount > usr.BankedGold)
							alert("You don't have that much!", "Deposit")	//the banker wont give you more then you have stored
							return
						usr << "You withdraw [Amount] gold."
						usr.BankedGold -= Amount	//take the gold from the bank
						usr.Gold += Amount	//and give it to the player
					if("Balance")
						usr<<"You have [usr.BankedGold] Gold in the Bank"*/
	itemSeller1
		icon_state="Player"
		verb
			shop()
				set src in oview(1)
				var/list/itemList=list("items/potions/potion1"=8, "Equipment/shirts/RedShirt"=8, "Equipment/shirts/OrangeShirt"=8, "Equipment/shirts/YellowShirt"=8, "Equipment/shirts/LimeShirt"=8, "Equipment/shirts/GreenShirt"=8, "Equipment/shirts/CyanShirt"=8, "Equipment/shirts/BlueShirt"=8, "Equipment/shirts/PurpleShirt"=8, "Equipment/pants/RedPants"=8, "Equipment/pants/OrangePants"=8, "Equipment/pants/YellowPants"=8, "Equipment/pants/LimePants"=8, "Equipment/pants/GreenPants"=8, "Equipment/pants/CyanPants"=8, "Equipment/pants/BluePants"=8, "Equipment/pants/PurplePants"=8, "Equipment/shoes/RedShoes"=8, "Equipment/shoes/OrangeShoes"=8, "Equipment/shoes/YellowShoes"=8, "Equipment/shoes/LimeShoes"=8, "Equipment/shoes/GreenShoes"=8, "Equipment/shoes/CyanShoes"=8, "Equipment/shoes/BlueShoes"=8, "Equipment/shoes/PurpleShoes"=8, "Equipment/hats/RedHat"=8, "Equipment/hats/OrangeHat"=8, "Equipment/hats/YellowHat"=8, "Equipment/hats/LimeHat"=8, "Equipment/hats/GreenHat"=8, "Equipment/hats/CyanHat"=8, "Equipment/hats/BlueHat"=8, "Equipment/hats/PurpleHat"=8, "Equipment/swords/RedSword"=8, "Equipment/swords/OrangeSword"=8, "Equipment/swords/YellowSword"=8, "Equipment/swords/LimeSword"=8, "Equipment/swords/GreenSword"=8, "Equipment/swords/CyanSword"=8, "Equipment/swords/BlueSword"=8, "Equipment/swords/PurpleSword"=8, "Nothing"=0)	//The item name and price
				var/item2Buy=input("What do yeh want?  Potion, nice clothing, or a sword?","Item Seller") as anything in itemList	//they pick an item
				var/price=itemList[item2Buy]	//this gets the price based on the list
				if(price)	//if it has no price you cant buy it!
					if(usr.money<price)
						usr<<"You need [itemList[item2Buy]] S.  Sadly, you only have [usr.money] S."
					else
						usr<<"You buy a [item2Buy]"
						var/obj/newItem="/obj/[item2Buy]"	//note: this only sells items of the obj/Items/ path
						newItem=new newItem	//creates the actual object
						usr.contents+=newItem	//add it to both their contents and Items list
						//newItem.Move(usr)
						usr.money-=price
						usr<<"Item Seller: Come again!"
	itemSeller2
		icon_state="Player"
		verb
			shop()
				set src in oview(1)
				var/list/itemList=list("items/potions/potion2"=16, "Equipment/shirts/RedChestplate"=32, "Equipment/shirts/OrangeChestplate"=32, "Equipment/shirts/YellowChestplate"=32, "Equipment/shirts/LimeChestplate"=32, "Equipment/shirts/GreenChestplate"=32, "Equipment/shirts/CyanChestplate"=32, "Equipment/shirts/BlueChestplate"=32, "Equipment/shirts/PurpleChestplate"=32, "Equipment/pants/RedGreaves"=32, "Equipment/pants/OrangeGreaves"=32, "Equipment/pants/YellowGreaves"=32, "Equipment/pants/LimeGreaves"=32, "Equipment/pants/GreenGreaves"=32, "Equipment/pants/CyanGreaves"=32, "Equipment/pants/BlueGreaves"=32, "Equipment/pants/PurpleGreaves"=32, "Equipment/shoes/RedBoots"=32, "Equipment/shoes/OrangeBoots"=32, "Equipment/shoes/YellowBoots"=32, "Equipment/shoes/LimeBoots"=32, "Equipment/shoes/GreenBoots"=32, "Equipment/shoes/CyanBoots"=32, "Equipment/shoes/BlueBoots"=32, "Equipment/shoes/PurpleBoots"=32, "Equipment/hats/RedHelm"=32, "Equipment/hats/OrangeHelm"=32, "Equipment/hats/YellowHelm"=32, "Equipment/hats/LimeHelm"=32, "Equipment/hats/GreenHelm"=32, "Equipment/hats/CyanHelm"=32, "Equipment/hats/BlueHelm"=32, "Equipment/hats/PurpleHelm"=32, "Equipment/swords/RedSteelSword"=32, "Equipment/swords/OrangeSteelSword"=32, "Equipment/swords/YellowSteelSword"=32, "Equipment/swords/LimeSteelSword"=32, "Equipment/swords/GreenSteelSword"=32, "Equipment/swords/CyanSteelSword"=32, "Equipment/swords/BlueSteelSword"=32, "Equipment/swords/PurpleSteelSword"=32, "Nothing"=0)	//The item name and price
				var/item2Buy=input("What do yeh want?  Strong potion, strong armor, or a steel blade?","Item Seller") as anything in itemList	//they pick an item
				var/price=itemList[item2Buy]	//this gets the price based on the list
				if(price)	//if it has no price you cant buy it!
					if(usr.money<price)
						usr<<"You need [itemList[item2Buy]] S.  Sadly, you only have [usr.money] S."
					else
						usr<<"You buy a [item2Buy]"
						var/obj/newItem="/obj/[item2Buy]"	//note: this only sells items of the obj/Items/ path
						newItem=new newItem	//creates the actual object
						usr.contents+=newItem	//add it to both their contents and Items list
						//newItem.Move(usr)
						usr.money-=price
						usr<<"Item Seller: Come again!"
	siegeMerchant
		icon_state="SiegeMerchant"
		verb
			shop()
				set src in oview(1)
				var/list/itemList=list("items/flags/rflag"=200, "items/flags/oflag"=200, "items/flags/yflag"=200, "items/flags/lflag"=200, "items/flags/gflag"=200, "items/flags/cflag"=200, "items/flags/bflag"=200, "items/flags/pflag"=200, "Nothing"=0)	//The item name and price
				var/item2Buy=input("What siege weapon or castle-related item do you want?","Siege merchant") as anything in itemList	//they pick an item
				var/price=itemList[item2Buy]	//this gets the price based on the list
				if(price)	//if it has no price you cant buy it!
					if(usr.money<price)
						usr<<"You need [itemList[item2Buy]] S.  Sadly, you only have [usr.money] S."
					else
						usr<<"You buy a [item2Buy]"
						var/obj/newItem="/obj/[item2Buy]"	//note: this only sells items of the obj/Items/ path
						newItem=new newItem	//creates the actual object
						usr.contents+=newItem	//add it to both their contents and Items list
						//newItem.Move(usr)
						usr.money-=price
						usr<<"Item Seller: Come again!"
