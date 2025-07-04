-- TurtleAuras.lua
-- Minimal WeakAuras-style addon for Turtle WoW

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")

local function debug(msg)
  DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99TurtleAuras|r: " .. tostring(msg))
end

frame:SetScript("OnEvent", function()
  debug("TurtleAuras loaded and ready.")
end)
