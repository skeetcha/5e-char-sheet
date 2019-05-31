mutable struct Character
	name::String
	stats
	saves
	skills

	function Character(n)
		new(n)
	end
end

function checkStats(ch::Character, s, st::String)
	if s == nothing
		if st == "str"
			ch.stats.str = 8
		elseif st == "dex"
			ch.stats.dex = 8
		elseif st == "con"
			ch.stats.con = 8
		elseif st == "int"
			ch.stats.int = 8
		elseif st == "wis"
			ch.stats.wis = 8
		elseif st == "cha"
			ch.stats.cha = 8
		end
	else
		if st == "str"
			ch.stats.str = s
		elseif st == "dex"
			ch.stats.dex = s
		elseif st == "con"
			ch.stats.con = s
		elseif st == "int"
			ch.stats.int = s
		elseif st == "wis"
			ch.stats.wis = s
		elseif st == "cha"
			ch.stats.cha = s
		end
	end
end

function createCharacter()
	println("Enter the character's name: ")
	name = readline()
	newchar = Character(name)
	
	print("Enter $name's Strength score: ")
	str = tryparse(Int, readline())
	print("Enter $name's Dexterity score: ")
	dex = tryparse(Int, readline())
	print("Enter $name's Constitution score: ")
	con = tryparse(Int, readline())
	print("Enter $name's Intelligence score: ")
	int = tryparse(Int, readline())
	print("Enter $name's Wisdom scores: ")
	wis = tryparse(Int, readline())
	print("Enter $name's Charisma scores: ")
	cha = tryparse(Int, readline())

	checkStats(newchar, str, "str")
	checkStats(newChar, dex, "dex")
	checkStats(newChar, con, "con")
	checkStats(newChar, int, "int")
	checkStats(newChar, wis, "wis")
	checkStats(newChar, cha, "cha")
end