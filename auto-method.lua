--init lib
local fcitx = require("fcitx")
--Wating inputFocus
fcitx.watchEvent(0x0001003, "focus_event")
--               ^^^^^^^^^ - Focus in ( focus out is 0x0001004)
-- list app
-- local list_app_en = {}
-- local list_app_vi = {}
-- focus event
-- function toVI(app)
-- 	for index, value in ipairs(list_app_vi) do
-- 		if app == value then
-- 			fcitx.setCurrentInputMethod("unikey")
-- 			print(app, "toVI")
-- 		end
-- 	end
-- end
-- function toUS(app)
-- 	for index, value in ipairs(list_app_en) do
-- 		if app == value then
-- 			fcitx.setCurrentInputMethod("keyboard-us")
-- 			print(app, "toEN")
-- 		end
-- 	end
-- end

function focus_event()
	io.popen("./focus_event.sh")
end
