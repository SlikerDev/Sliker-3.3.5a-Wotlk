-- Liste f�r Umlaute:
-- � = \195\164
-- � = \195\132
-- � = \195\182
-- � = \195\150
-- � = \195\188
-- � = \195\156
-- � = \195\159
deDEList = {
	["winkt Euch zu"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "wave"},
	["Abschied"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "bye"},
	["hier nur so"] = {onlyYou = false, onTarget = false,  delay = 1, builtIn = true, emote = "smell"},
	["herzlichen Hallo"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "hello"},
	["Witz"] = {onlyYou = false, onTarget = false,  delay = 1, builtIn = true, emote = "laugh"},
	["Sinn des Lebens"] = {onlyYou = false, onTarget = false,  delay = 1, builtIn = false, emote = "denkt dar\195\188ber nach und kommt zu keinem sinnvollen Ergebnis."},
	["Kuss"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "shy"},
	["Ohrfeige"] = {onlyYou = true, onTarget = false,  delay = 1, builtIn = true, emote = "cry"},
	["wuschelt"] = {onlyYou = true, onTarget = false,  delay = 1, builtIn = true, emote = "giggle"},
	["tanzen"] = {onlyYou = false, onTarget = true,  delay = 1, builtIn = true, emote = "cheer"},
	["tanzt"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "dance"},
	["spuckt"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "slap"},
	["droht"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "fear"},
	["dankt"] = {onlyYou = true, onTarget = true,  delay = 1, builtIn = true, emote = "welcome"},
}
deDEWords = {
	-- If player is target
	player = {"Euch", "Euer", "Euren"},
	-- If sender had no target
	noTar = {"alle", "allen"}
}
