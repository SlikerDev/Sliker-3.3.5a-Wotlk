-- Liste für Umlaute:
-- ä = \195\164
-- Ä = \195\132
-- ö = \195\182
-- Ö = \195\150
-- ü = \195\188
-- Ü = \195\156
-- ß = \195\159
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
