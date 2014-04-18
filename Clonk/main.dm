/*
	These are simple defaults for your project.
 */

world
	fps = 40		// 25 frames per second
	icon_size = 16	// 32x32 icon size by default

	name="Adventures in Clonk"
	status="A cool lowrez RPG game."
	hub="CliffracerX.CliffieRPG"
	hub_password = "utx71CsLZGvJxlUL"
	New()
		respawnWorld()



// Make objects move 8 pixels per tick when walking

world
	mob=/mob/player
	view="36x24"

mob/player
	step_size = 4
	icon='mobs.dmi'
	icon_state="Player"


mob
	step_size = 8
	Login()
		if(src.loadProc())
			world<<"[src] joined the game"
			if(src.musicEnabled==1)
				src << sound('mainTheme.wav',channel=2,repeat=1)
		else
			src.loc=locate(5,5,1)
			//src << sound('mainTheme.wav',channel=2,repeat=1)
			world<<"[src] joined the game"
			world.ClearMedal("Overpowered", src)
			world.ClearMedal("Strong", src)
			world.ClearMedal("Slayer", src)
			world.ClearMedal("Vaporizer", src)
			world.ClearMedal("EXTERMINAAATE!", src)
			//src<<"Pssst...use load now!"
		src.updateScores()
	Logout()
		world<<"[src] left the game"
		src.saveProc()
		del src


obj
	step_size = 8