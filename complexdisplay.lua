-- Get Addon object
local CS = LibStub("AceAddon-3.0"):GetAddon("Conspicuous Spirits", true)
if not CS then return end


-- Libraries
local LSM = LibStub("LibSharedMedia-3.0")


-- Module
CS.displayBuilders["Complex"] = "initializeComplex"


-- Options
CS.optionsTable.args.complex = {
	order = 2,
	type = "group",
	name = L["Complex Display"],
	cmdHidden  = true,
	args = {
		enable = {
			order = 1,
			type = "toggle",
			name = L["Enable"],
			get = function()
				return CS.db.display == "Complex"
			end,
			set = function(info, val)
				if val then CS.db.display = "Complex" end
				CS:Initialize()
			end
		},
		layout = {
			order = 2,
			type = "group",
			name = L["Layout"],
			inline = true,
			args = {
				orientation = {
					order = 1,
					type = "select",
					style = "dropdown",
					name = L["Orientation"],
					desc = L["Set Display orientation"],
					values = {
						["Horizontal"] = L["Horizontal"],
						["Vertical"] = L["Vertical"]
					},
					get = function()
						return CS.db.complex.orientation
					end,
					set = function(info, val)
						CS.db.complex.orientation = val
						CS:Initialize()
					end
				},
				direction = {
					order = 2,
					type = "select",
					name = L["Growth direction"],
					desc = L["Order in which the Shadow Orbs get filled in"],
					values = {
						["Regular"] = L["Regular"],
						["Reversed"] = L["Reversed"]
					},
					get = function()
						return CS.db.complex.growthDirection
					end,
					set = function(info, val)
						CS.db.complex.growthDirection = val
						CS:Initialize()
					end
				}
			}
		},
		orbs = {
			order = 3,
			type = "group",
			name = L["Orbs"],
			inline = true,
			args = {
				height = {
					order = 1,
					type = "range",
					name = function() if CS.db.complex.orientation == "Vertical" then return L["Width"] else return L["Height"] end end,
					desc = function() if CS.db.complex.orientation == "Vertical" then return L["Set Shadow Orb Width"] else return L["Set Shadow Orb Height"] end end,
					min = 1,
					max = 100,
					step = 1,
					get = function()
						return CS.db.complex.height
					end,
					set = function(info, val)
						CS.db.complex.height = val
						CS:Initialize()
					end
				},
				width = {
					order = 2,
					type = "range",
					name = function() if CS.db.complex.orientation == "Vertical" then return L["Height"] else return L["Width"] end end,
					desc = function() if CS.db.complex.orientation == "Vertical" then return L["Set Shadow Orb Height"] else return L["Set Shadow Orb Width"] end end,
					min = 1,
					max = 100,
					step = 1,
					get = function()
						return CS.db.complex.width
					end,
					set = function(info, val)
						CS.db.complex.width = val
						CS:Initialize()
					end
				},
				spacing = {
					order = 3,
					type = "range",
					name = L["Spacing"],
					desc = L["Set Shadow Orb Spacing"],
					min = 0,
					max = 100,
					step = 1,
					get = function()
						return CS.db.complex.spacing
					end,
					set = function(info, val)
						CS.db.complex.spacing = val
						CS:Initialize()
					end
				},
				spacer = {
					order = 3.5,
					type="description",
					name=""
				},
				color1 = {
					order = 4,
					type = "color",
					name = L["Color 1"],
					desc = L["Set Color 1"],
					hasAlpha = true,
					get = function()
						local r, b, g, a = CS.db.complex.color1.r, CS.db.complex.color1.b, CS.db.complex.color1.g, CS.db.complex.color1.a
						return r, b, g, a
					end,
					set = function(info, r, b, g, a)
						CS.db.complex.color1.r, CS.db.complex.color1.b, CS.db.complex.color1.g, CS.db.complex.color1.a = r, b, g, a
						CS:Initialize()
					end
				},
				color2 = {
					order = 5,
					type = "color",
					name = L["Color 2"],
					desc = L["Set Color 2"],
					hasAlpha = true,
					get = function()
						local r, b, g, a = CS.db.complex.color2.r, CS.db.complex.color2.b, CS.db.complex.color2.g, CS.db.complex.color2.a
						return r, b, g, a
					end,
					set = function(info, r, b, g, a)
						CS.db.complex.color2.r, CS.db.complex.color2.b, CS.db.complex.color2.g, CS.db.complex.color2.a = r, b, g, a
						CS:Initialize()
					end
				},
				spacer2 = {
					order = 5.5,
					type="description",
					name=""
				},
				textureHandle = {
					order = 6,
					type = "select",
					dialogControl = "LSM30_Statusbar",
					name = L["Texture"],
					desc = L["Set texture used for the Shadow Orbs"],
					values = LSM:HashTable("statusbar"),
					get = function()
						return CS.db.complex.textureHandle
					end,
					set = function(_, key)
						CS.db.complex.textureHandle = key
						CS:Initialize()
					end
				},
				borderColor = {
					order = 7,
					type = "color",
					name = L["Border Color"],
					desc = L["Set Shadow Orb border color"],
					hasAlpha = true,
					get = function()
						return CS.db.complex.borderColor.r, CS.db.complex.borderColor.b, CS.db.complex.borderColor.g, CS.db.complex.borderColor.a
					end,
					set = function(info, r, b, g, a)
						CS.db.complex.borderColor.r, CS.db.complex.borderColor.b, CS.db.complex.borderColor.g, CS.db.complex.borderColor.a = r, b, g, a
						CS:Initialize()
					end
				},
				spacer3 = {
					order = 8.5,
					type="description",
					name=""
				},
				visibility = {
					order = 9,
					type = "input",
					name = L["Visibility"],
					desc = L["Regulate display visibility with macro conditionals"],
					width = "full",
					get = function()
						return CS.db.complex.visibilityConditionals
					end,
					set = function(info, val)
						CS.db.complex.visibilityConditionals = val
						CS:Initialize()
					end
				}
			}
		},
		text = {
			order = 4,
			type = "group",
			name = L["Text"],
			inline = true,
			args = {
				fontName = {
					order = 7,
					type = "select",
					dialogControl = "LSM30_Font",
					name = L["Font"],
					desc = L["Select font for the Complex display"],
					values = LSM:HashTable("font"),
					get = function()
						return CS.db.complex.fontName
					end,
					set = function(_,key)
						CS.db.complex.fontName = key
						CS:Initialize()
					end
				},
				fontSize = {
					order = 8,
					type = "range",
					name = L["Font Size"],
					desc = L["Set Font Size"],
					min = 1,
					max = 32,
					step = 1,
					get = function()
						return CS.db.complex.fontSize
					end,
					set = function(info, val)
						CS.db.complex.fontSize = val
						CS:Initialize()
					end
				},
				fontFlags = {
					order = 9,
					type = "select",
					style = "dropdown",
					name = L["Font Flags"],
					desc = L["Set Font Flags"],
					values = {
						["None"] = L["None"],
						["Shadow"] = L["Shadow"],
						["OUTLINE"] = L["OUTLINE"],
						["THICKOUTLINE"] = L["THICKOUTLINE"],
						["MONOCHROMEOUTLINE"] = L["MONOCHROMEOUTLINE"]
					},
					get = function()
						return CS.db.complex.fontFlags
					end,
					set = function(info, val)
						CS.db.complex.fontFlags = val
						CS:Initialize()
					end
				},
				color = {
					order = 10,
					type = "color",
					name = L["Font Color"],
					desc = L["Set Font Color"],
					get = function()
						return CS.db.complex.fontColor.r, CS.db.complex.fontColor.b, CS.db.complex.fontColor.g, CS.db.complex.fontColor.a
					end,
					set = function(info, r, b, g, a)
						CS.db.complex.fontColor.r, CS.db.complex.fontColor.b, CS.db.complex.fontColor.g, CS.db.complex.fontColor.a = r, b, g, a
						CS:Initialize()
					end
				},
				spacer = {
					order = 10.5,
					type="description",
					name=""
				},
				stringXOffset = {
					order = 11,
					type = "range",
					name = L["X Offset"],
					desc = L["X offset for the Shadowy Apparition time text"],
					min = -1000,
					max = 1000,
					step = 1,
					get = function()
						local offset = CS.db.complex.orientation == "Vertical" and -CS.db.complex.stringYOffset or CS.db.complex.stringXOffset
						if (CS.db.complex.growthDirection == "Reversed") and (CS.db.complex.orientation ~= "Vertical") then offset = -offset end
						return offset
					end,
					set = function(info, val)
						if CS.db.complex.orientation == "Vertical" then
							CS.db.complex.stringYOffset = -val
						else
							if CS.db.complex.growthDirection == "Reversed" then val = -val end
							CS.db.complex.stringXOffset = val
						end
						CS:Initialize()
					end
				},
				stringYOffset = {
					order = 12,
					type = "range",
					name = L["Y Offset"],
					desc = L["Y offset for the Shadowy Apparition time text"],
					min = -1000,
					max = 1000,
					step = 1,
					get = function()
						local offset = CS.db.complex.orientation == "Vertical" and CS.db.complex.stringXOffset or CS.db.complex.stringYOffset
						if CS.db.complex.growthDirection == "Reversed" and CS.db.complex.orientation == "Vertical" then offset = -offset end
						return offset
					end,
					set = function(info, val)
						if CS.db.complex.orientation == "Vertical" then
							if CS.db.complex.growthDirection == "Reversed" and CS.db.complex.orientation == "Vertical" then val = -val end
							CS.db.complex.stringXOffset = val
						else
							CS.db.complex.stringYOffset = val
						end
						CS:Initialize()
					end
				}
			}
		}
	}
}

CS.defaultSettings.global.complex = {
	height = 8,
	width = 32,
	spacing = 1,
	color1 = {r=0.38, b=0.23, g=0.51, a=1.00},
	color2 = {r=0.51, b=0.00, g=0.24, a=1.00},
	fontSize = 15,
	fontName = "Fritz Quadrata TT",
	fontFlags = "Shadow",
	fontColor = {r=1, b=1, g=1, a=1},
	stringXOffset = 0,
	stringYOffset = 0,
	visibilityConditionals = "[harm] [combat] show; hide",
	orientation = "Horizontal",
	growthDirection = "Regular",
	textureHandle = "Empty",
	borderColor = {r=0, b=0, g=0, a=1}
}


-- Upvalues
local GetTime = GetTime
local mathmax = math.max
local stringformat = string.format


-- Frames
local timerFrame = CS.frame
local orbFrames = {}
local SATimers = {}


-- Variables
local db
local timerID
local remainingThreshold = 2 -- threshold between short and long Shadowy Apparitions
local fontPath
local backdrop = {
	bgFile = nil,
	edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
	tile = false,
	edgeSize = 1
}


-- Functions
local function refreshDisplay(self, orbs, timers)
	local currentTime
	local k = 1
	for i = 1, 6 do
		if orbs >= i then
			orbFrames[i]:Show()
			SATimers[i]:Hide()
		else
			orbFrames[i]:Hide()
			timerID = timers[k]
			if timerID then
				SATimers[i]:Show()
				currentTime = currentTime or GetTime()
				local remaining = mathmax(0, timerID.impactTime - currentTime)
				if remaining < remainingThreshold then
					SATimers[i]:SetText(stringformat("%.1f", remaining))
				else
					SATimers[i]:SetText(stringformat("%.0f", remaining))
				end
				k = k + 1
			else
				SATimers[i]:Hide()
			end
		end
	end
end

local function createFrames()
	local orientation = db.orientation
	local growthDirection = db.growthDirection
	local height = db.height
	local width = db.width
	local flags = db.fontFlags
	local stringXOffset = db.stringXOffset
	local stringYOffset = db.stringYOffset
	
	if growthDirection == "Reversed" then
		stringXOffset = -1 * stringXOffset
	end
	
	local function createOrbFrame(numeration)
		local frame = orbFrames[numeration] or CreateFrame("frame", nil, timerFrame)
		frame:ClearAllPoints()
		local displacement = (width + db.spacing) * (numeration - 1)
		if orientation == "Vertical" then
			frame:SetHeight(width)
			frame:SetWidth(height)
			if growthDirection == "Reversed" then
				frame:SetPoint("TOPRIGHT", 0, -displacement)
			else
				frame:SetPoint("BOTTOMRIGHT", 0, displacement)
			end
		else
			frame:SetHeight(height)
			frame:SetWidth(width)
			if growthDirection == "Reversed" then
				frame:SetPoint("BOTTOMRIGHT", -displacement, 0)
			else
				frame:SetPoint("BOTTOMLEFT", displacement, 0)
			end
		end
		
		frame:SetBackdrop(backdrop)
		frame:SetBackdropBorderColor(db.borderColor.r, db.borderColor.b, db.borderColor.g, db.borderColor.a)
		if numeration < 6 then
			frame:Show()
		else
			frame:Hide()
		end
		return frame
	end
	for i = 1, 6 do
		orbFrames[i] = createOrbFrame(i)
	end

	local function createTimerFontString(referenceFrame, numeration)
		local fontString = SATimers[numeration] or timerFrame:CreateFontString(nil, "OVERLAY")
		fontString:ClearAllPoints()
		if orientation == "Vertical" then
			fontString:SetPoint("RIGHT", referenceFrame, "LEFT", -stringYOffset - 1, stringXOffset)
		else
			fontString:SetPoint("BOTTOM", referenceFrame, "TOP", stringXOffset, stringYOffset + 1)
		end
		fontString:SetFont(fontPath, db.fontSize, (flags == "MONOCHROMEOUTLINE" or flags == "OUTLINE" or flags == "THICKOUTLINE") and flags or nil)
		fontString:SetTextColor(db.fontColor.r, db.fontColor.b, db.fontColor.g, db.fontColor.a)
		fontString:SetShadowOffset(1, -1)
		fontString:SetShadowColor(0, 0, 0, db.fontFlags == "Shadow" and 1 or 0)
		fontString:Show()
		fontString:SetText("0.0")
		
		return fontString
	end
	for i = 1, 6 do
		SATimers[i] = createTimerFontString(orbFrames[i], i)
	end
	
	local c1r, c1b, c1g, c1a = db.color1.r, db.color1.b, db.color1.g, db.color1.a 
	local c2r, c2b, c2g, c2a = db.color2.r, db.color2.b, db.color2.g, db.color2.a 
	orbFrames[1]:SetBackdropColor(c1r, c1b, c1g, c1a)
	orbFrames[2]:SetBackdropColor(c1r, c1b, c1g, c1a)
	orbFrames[3]:SetBackdropColor(c1r, c1b, c1g, c1a)
	orbFrames[4]:SetBackdropColor(c2r, c2b, c2g, c2a)
	orbFrames[5]:SetBackdropColor(c2r, c2b, c2g, c2a)
	orbFrames[6]:SetBackdropColor(0, 0, 0, 0)  -- dummy frame to anchor overflow fontstring to
end

local function ShowChildren()
	for i = 1, 5 do
		orbFrames[i]:Show()
		SATimers[i]:Show()
	end
	SATimers[6]:Show()
end

local function HideChildren()
	for i = 1, 6 do
		orbFrames[i]:Hide()
		SATimers[i]:Hide()
	end
	RegisterStateDriver(timerFrame, "visibility", "")
end

function CS:initializeComplex()
	db = self.db.complex
	local height = db.height + 25
	local width = 5 * db.width + 4 * db.spacing

	timerFrame:SetHeight(db.orientation == "Vertical" and width or height)
	timerFrame:SetWidth(db.orientation == "Vertical" and height or width)
	
	fontPath = LSM:Fetch("font", db.fontName)
	backdrop.bgFile = (db.textureHandle == "Empty") and "Interface\\ChatFrame\\ChatFrameBackground" or LSM:Fetch("statusbar", db.textureHandle)
	
	createFrames()
	if timerFrame.lock then
		RegisterStateDriver(timerFrame, "visibility", db.visibilityConditionals)
	end
	self.refreshDisplay = refreshDisplay
	timerFrame.ShowChildren = ShowChildren
	timerFrame.HideChildren = HideChildren
	
	self.needsFrequentUpdates = true
end