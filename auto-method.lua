--init lib
local fcitx = require("fcitx")
--Wating inputFocus
fcitx.watchEvent(0x0001003, "focus_event")
--               ^^^^^^^^^ - Focus in ( focus out is 0x0001004)

function focus_event()
	--Execute bash script
	io.popen("./focus_event.sh")
end
