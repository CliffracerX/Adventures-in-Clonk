mob/proc/saveProc()
	var/FileName="Players/[ckey(src.key)].sav"
	if(fexists(FileName))   fdel(FileName)
	var/savefile/F=new(FileName)
	F["lvl"]<<src.lvl
	F["exp"]<<src.exp
	F["nxp"]<<src.nxp
	F["HP"]<<src.HP
	F["maxHP"]<<src.maxHP
	F["str"]<<src.str
	F["def"]<<src.def
	F["lastX"]<<src.x
	F["lastY"]<<src.y
	F["lastZ"]<<src.z
	F["contents"]<<contents
	F["upgPnt"]<<src.upgPnt
	F["money"]<<src.money
	F["music"]<<src.musicEnabled
	F["kills"]<<src.kills
	src<<"Character Saved!"

mob/proc/loadProc()
    var/FileName="Players/[ckey(src.key)].sav"
    if(fexists(FileName))
        var/savefile/F=new(FileName)
        F["lvl"]>>src.lvl
        F["exp"]>>src.exp
        F["nxp"]>>src.nxp
        F["HP"]>>src.HP
        F["maxHP"]>>src.maxHP
        F["str"]>>src.str
        F["def"]>>src.def
        F["contents"]>>contents
        F["upgPnt"]>>src.upgPnt
        F["money"]>>src.money
        F["music"]>>src.musicEnabled
        F["kills"]>>src.kills
        src.loc=locate(F["lastX"],F["lastY"],F["lastZ"])
        src<<"Character Loaded!  Welcome back."
        return 1