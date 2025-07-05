local f = CreateFrame("Frame", "TurtleAurasFrame", UIParent)
f:SetWidth(200)
f:SetHeight(200)
f:SetPoint("CENTER")
f:SetBackdrop({
  bgFile = "Interface/Tooltips/UI-Tooltip-Background",
  edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
  tile = true, tileSize = 16, edgeSize = 16,
  insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
f:SetBackdropColor(0, 0, 0, 0.8)

local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
title:SetPoint("TOP", 0, -10)
title:SetText("TurtleAuras")

local dropdown = CreateFrame("FRAME", "TurtleAurasDropdown", f, "UIDropDownMenuTemplate")
dropdown:SetPoint("TOP", title, "BOTTOM", 0, -20)

local function OnClick(self)
  UIDropDownMenu_SetSelectedID(dropdown, self:GetID())
end

local function Initialize(self, level)
  local info = UIDropDownMenu_CreateInfo()
  local buffs = { "Mark of the Wild", "Blessing of Might", "Power Word: Fortitude" }
  for k, v in pairs(buffs) do
    info = UIDropDownMenu_CreateInfo()
    info.text = v
    info.value = v
    info.func = OnClick
    UIDropDownMenu_AddButton(info, level)
  end
end

UIDropDownMenu_Initialize(dropdown, Initialize)
UIDropDownMenu_SetWidth(dropdown, 150)
UIDropDownMenu_SetButtonWidth(dropdown, 124)
UIDropDownMenu_SetSelectedID(dropdown, 1)
UIDropDownMenu_JustifyText(dropdown, "LEFT")
