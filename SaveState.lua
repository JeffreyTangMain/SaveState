SaveState = {}
function initSaveState()
	local lovely = require("lovely")
	local nativefs = require("nativefs")
	assert(load(nativefs.read(lovely.mod_dir .. "/SaveState/SaveState_UI.lua")))()
	assert(load(nativefs.read(lovely.mod_dir .. "/SaveState/SaveState_keyhandler.lua")))()
	if nativefs.getInfo(lovely.mod_dir .. "/SaveState/settings.lua") then
		local settings_file = STR_UNPACK(nativefs.read((lovely.mod_dir .. "/SaveState/settings.lua")))
		if settings_file ~= nil then
			SaveState.SETTINGS = settings_file
		end
	end
  _RELEASE_MODE = true
end


