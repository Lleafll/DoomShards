-- Get addon object
local CS = LibStub("AceAddon-3.0"):GetAddon("Conspicuous Spirits", true)
if not CS then return end


-- Libraries
local L = LibStub("AceLocale-3.0"):GetLocale("ConspicuousSpirits")


-- Options
local optionsTable = {
	type = "group",
	name = "Conspicuous Spirits",
	childGroups = "tab",
	get = function(info) return CS.db[info[#info]] end,
	set = function(info, value) CS.db[info[#info]] = value; CS:Build() end,
	args = {
		header2 = {
			order = 0,
			type = "header",
			name = L["Version"].." @project-version@"
		},
		general = {
			order = 1,
			type = "group",
			name = L["General"],
			cmdHidden = true,
			inline = true,
			args = {
				scale = {
					order = 1,
					type = "range",
					name = L["Scale"],
					desc = L["Set Frame Scale"],
					min = 0,
					max = 3,
					step = 0.01
				},
				reset = {
					order = 2,
					type = "execute",
					name = L["Reset to Defaults"],
					confirm = true,
					func = function()
						CS:ResetDB()
						print(L["Conspicuous Spirits reset!"])
						--CS:getDB()
						CS:Build()
					end
				},
				spacer = {
					order = 2.5,
					type = "description",
					name = ""
				},
				aggressiveCaching = {
					order = 3,
					type = "toggle",
					name = L["Aggressive Caching"],
					desc = L["Enables frequent distance scanning of all available targets. Will increase CPU usage slightly and is only going to increase accuracy in situations with many fast-moving mobs."]
				},
				aggressiveCachingInterval = {
					order = 4,
					type = "range",
					name = L["Aggressive Caching Interval"],
					desc = L["Scanning interval when Aggressive Caching is enabled"],
					min = 0.2,
					max = 3,
					step = 0.1
				},
				calculateOutOfCombat = {
					order = 5,
					type = "toggle",
					name = L["Out-of-Combat Calculation"],
					desc = L["Keep calculating distances and anticipated Orbs when leaving combat."]
				}
			}
		},
		position = {
			order = 5,
			type = "group",
			name = L["Position"],
			inline = true,
			args = {
				lock = {
					order = 1,
					type = "execute",
					name = L["Toggle Lock"],
					desc = L["Shows the frame and toggles it for repositioning."],
					func = function()
						if UnitAffectingCombat("player") then return end
						if not CS.locked then
							CS:Lock()
						else
							CS:Unlock()
						end
					end
				},
				reset = {
					order = 2,
					type = "execute",
					name = L["Reset Position"],
					cmdHidden = true,
					confirm  = true,
					func = function() 
						for name, module in CS:IterateModules() do
							if CS.db[name] then
								if CS.db[name].posX then CS.db[name].posX = 0 end
								if CS.db[name].posY then CS.db[name].posY = 0 end
							end
						end
						CS:Build()
					end
				}
			}
		}
	}
}

CS.defaultSettings = {
	global = {
		scale = 1,
		aggressiveCaching = false,
		aggressiveCachingInterval = 1,
		calculateOutOfCombat = false
	}
}

LibStub("AceConfig-3.0"):RegisterOptionsTable("Conspicuous Spirits", optionsTable)
local ACD = LibStub("AceConfigDialog-3.0")
ACD:AddToBlizOptions("Conspicuous Spirits")
ACD:SetDefaultSize("Conspicuous Spirits", 700, 750)

function CS:HandleChatCommand(command)
	local suffix = string.match(command, "(%w+)")

	if suffix and (suffix == "toggle" or suffix == "lock" or (suffix == "unlock" and self.locked)) then
		if self.locked then
			self:Unlock()
		else
			self:Lock()
		end
	end
	
	if ACD.OpenFrames[addons] then
		ACD:Close("Conspicuous Spirits")
	else
		ACD:Open("Conspicuous Spirits")
	end
end

CS:RegisterChatCommand("cs", "HandleChatCommand")
CS:RegisterChatCommand("csp", "HandleChatCommand")
CS:RegisterChatCommand("conspicuousspirits", "HandleChatCommand")

do
	local orderIterator = 2
	function CS:AddDisplayOptions(displayName, displayOptions, displayDefaults)
		optionsTable.args[displayName] = displayOptions
		optionsTable.args[displayName].order = orderIterator
		orderIterator = orderIterator + 1
		
		self.defaultSettings.global[displayName] = displayDefaults
	end
end