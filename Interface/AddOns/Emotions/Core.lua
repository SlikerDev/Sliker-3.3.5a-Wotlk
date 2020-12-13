-- EmoteResponder v0.1
-- AddOn to automatically respond on emotes
-- Written by Áine|Herja @ Teldrassil-EU


Emotions = LibStub("AceAddon-3.0"):NewAddon("Emotions", "AceTimer-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Emotions")
local nextEmote = GetTime();

-- Define Lang. constants for XML

L_ADDONNAME = "Emotions";
L_ACTIVE = L["Active"];
L_PAUSE = L["Pause"];
L_SAVE = L["Save"];
L_TRIGGER = L["Trigger"];
L_EMOTEHEADER = L["emoteHeader"];
L_NEWEMOTE = L["newEmote"];
L_DELETEEMOTE = L["deleteEmote"];
L_SAVEEMOTE = L["saveEmote"];
L_ONLYYOU = L["onlyYou"];
L_ONTARGET = L["onTarget"];
L_BUILTIN = L["builtIn"];
L_REACTION = L["reaction"];
L_DELAY = L["delay"];

-- Program

local defaults = {
	char = {
	    active  = true,
	    firstTime   = true,
	    minDelay    = 3,
	    debug = true,
	    -- delayOnSelf = true,
	    -- delayWhileTyping    = true,
	    emotes = {},
	    words = {},
    }
}

function Emotions:SaveDefaultEmotes()
	local locale = GetLocale();
	if (locale == "deDE") then
	    for k,v in pairs(deDEList) do
	        db.char.emotes[k] = v
	    end
	    for k,v in pairs(deDEWords) do
	        db.char.words[k] = v
	    end
	else
	    for k,v in pairs(enUSList) do
	        db.char.emotes[k] = v
	    end
	    for k,v in pairs(enUSWords) do
	        db.char.words[k] = v
	    end
	end
end

function OnLoad()
	Emotions_General.name = L_ADDONNAME;
	InterfaceOptions_AddCategory(Emotions_General);

	Emotions_EmotePanel.name = L_EMOTEHEADER;
	Emotions_EmotePanel.parent = Emotions_General;
	InterfaceOptions_AddCategory(Emotions_EmotePanel);
end

function LoadEmoteData(text)
	trigger:SetText(text);
	trigger:SetCursorPosition(0);
	delay:SetText(db.char.emotes[text]["delay"]);
	delay:SetCursorPosition(0);
	onlyYouCheck:SetChecked(db.char.emotes[text]["onlyYou"]);
	onTargetCheck:SetChecked(db.char.emotes[text]["onTarget"]);
	builtInCheck:SetChecked(db.char.emotes[text]["builtIn"]);
	reaction:SetText(db.char.emotes[text]["emote"]);
	reaction:SetCursorPosition(0);
end

function Emotions:OnInitialize()
    -- Called when the addon is loaded
	db = LibStub("AceDB-3.0"):New("EmotionsDB", defaults, "char");
	-- If used first time, get some default emotes for the DB
	if db.char.firstTime then
		Emotions:SaveDefaultEmotes();
		db.char.firstTime = false;
	end
	-- Emotions:DebugOutput(db.char.active);

	activeCheck:SetChecked(db.char.active);
	pause:SetNumber(db.char.minDelay);
	pause:SetCursorPosition(0);
end

function emoteList_OnLoad()
	if db == nil then return end;
	for k,v in pairs(db.char.emotes) do

		info            = {}
		info.text       = k
		info.value      = k
		info.func       = function() LoadEmoteData(k) end

		UIDropDownMenu_AddButton(info);
	end
    --Emotions:DebugOutput("emoteList_OnLoad() ausgefuehrt");
end

function emoteList_OnClick()
	ToggleDropDownMenu(1, nil, self.emoteList, self);
end

function Emotions:DebugOutput(msg)
	if not db.char.debug then return end
    DEFAULT_CHAT_FRAME:AddMessage(msg);
end

-- Slash commands
SLASH_EMOTIONS1 = "/emotions";
SlashCmdList["EMOTIONS"] = function(msg)
    InterfaceOptionsFrame_OpenToCategory("Emotions");
end

function Emotions:SaveSettings()
	db.char.active = activeCheck:GetChecked();
	db.char.minDelay = pause:GetText();
end

function Emotions:SaveEmote()
	triggerText = trigger:GetText(trigger);
	if(db.char.emotes[triggerText] == nil) then
		db.char.emotes[triggerText] = {};
	end
	db.char.emotes[triggerText]["delay"] = tonumber(delay:GetText());
	if not onlyYouCheck:GetChecked() then
		db.char.emotes[triggerText]["onlyYou"] = false;
	else
		db.char.emotes[triggerText]["onlyYou"] = true;
	end
	if not onTargetCheck:GetChecked() then
		db.char.emotes[triggerText]["onTarget"] = false;
	else
		db.char.emotes[triggerText]["onTarget"] = true;
	end
	if not builtInCheck:GetChecked() then
		db.char.emotes[triggerText]["builtIn"] = false;
	else
		db.char.emotes[triggerText]["builtIn"] = true;
	end
	db.char.emotes[triggerText]["emote"] = reaction:GetText();
end

function Emotions:DeleteEmote()
	triggerText = trigger:GetText(trigger);
	db.char.emotes[triggerText] = nil;
	trigger:SetText("");
	delay:SetText("");
	onlyYouCheck:SetChecked(false);
	onTargetCheck:SetChecked(false);
	builtInCheck:SetChecked(false);
	reaction:SetText("");
end

function Emotions:NewEmote()
	trigger:SetText("");
	delay:SetText("");
	onlyYouCheck:SetChecked(false);
	onTargetCheck:SetChecked(false);
	builtInCheck:SetChecked(false);
	reaction:SetText("");
end

function Emotions:PrintList()
    for k,v in pairs(db.char.emotes) do
    	--Emotions:DebugOutput(tostring(k).." - "..v.emote);
    end
end

local f=CreateFrame("FRAME","Emotions",UIParent);
f:RegisterEvent("CHAT_MSG_TEXT_EMOTE")
f:SetScript("OnEvent", function() Emotions:EmoteEvent(event) end)

function Emotions:SearchEmote(text)
	local result = nil;
	for k,v in pairs(db.char.emotes) do
		result = string.find(text, "[^%w]"..k.."[^%w]");
		if not (result == nil) then
    		--Emotions:DebugOutput(v.emote);
			return v;
		end
	end
	return false;
end

function Emotions:GetTarget(text, target)
	local result = nil;
	local tarWords = db.char.words[target];
	for k,v in pairs(tarWords) do
		result = string.find(text, v);
		if not (result == nil) then
			return v;
		end
	end
	return false;
end

function Emotions:ReplaceTarget(emote, target)
	return string.gsub(emote, "/%t", target);
end

function Emotions:SendOwnEmote(emote)
	SendChatMessage(emote, "EMOTE");
end

function Emotions:EmoteEvent(event)
	local msg = arg1
	local sender = arg2
	local target = arg5
	local emoteInfo = Emotions:SearchEmote(msg)
	if (not db.char.active) or (sender == UnitName("Player")) or (not emoteInfo) or (GetTime() < nextEmote) then
    	--Emotions:DebugOutput(nextEmote);
		return
	end
	if (emoteInfo.builtIn) then
		-- if (emoteInfo.enemy and UnitFactionGroup("PLAYER") ~= UnitFactionGroup(sender)) or (UnitFactionGroup("PLAYER") == UnitFactionGroup(sender)) then
			if emoteInfo.onlyYou and Emotions:GetTarget(msg, "player") then
				if emoteInfo.onTarget then
					-- DoEmote(emoteInfo.emote, sender)
					self:ScheduleTimer(function() DoEmote(emoteInfo.emote, sender) end, emoteInfo.delay)
				else
                    -- DoEmote(emoteInfo.emote, 1)
					self:ScheduleTimer(function() DoEmote(emoteInfo.emote, 1) end, emoteInfo.delay)
                end
                nextEmote = GetTime() + db.char.minDelay;
            elseif emoteInfo.onlyYou and (not Emotions:GetTarget(msg, "player")) then
                return
            else
				if emoteInfo.onTarget then
					-- DoEmote(emoteInfo.emote, sender)
					self:ScheduleTimer(function() DoEmote(emoteInfo.emote, sender) end, emoteInfo.delay)
				else
                    -- DoEmote(emoteInfo.emote, 1)
					self:ScheduleTimer(function() DoEmote(emoteInfo.emote, 1) end, emoteInfo.delay)
                end
                nextEmote = GetTime() + db.char.minDelay;
            end
        -- else
        --    return
        -- end
	else
        --if (emoteInfo.enemy and UnitFactionGroup("PLAYER") ~= UnitFactionGroup(sender)) or (UnitFactionGroup("PLAYER") == UnitFactionGroup(sender)) then
            local emote = Emotions:ReplaceTarget(emoteInfo.emote, sender)
            if emoteInfo.onlyYou and Emotions:GetTarget(msg, "player") then
				self:ScheduleTimer("SendOwnEmote", emoteInfo.delay, emote)
                nextEmote = GetTime() + db.char.minDelay;
            elseif emoteInfo.onlyYou and (not Emotions:GetTarget(msg, "player")) then
                return
            else
				self:ScheduleTimer("SendOwnEmote", emoteInfo.delay, emote)
                nextEmote = GetTime() + db.char.minDelay;
            end
        --else
        --    return
        --end
    end
end