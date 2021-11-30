display.setStatusBar(display.TranslucentStatusBar)
--> Hides the status bar
system.setIdleTimer( false )

composer = require("composer")
easingx = require("lua.easingx")

FONT5 = "CHERI___"

Global = {
	screenHeight = display.viewableContentHeight,
	screenWidth  = display.viewableContentWidth, 
	visakX = math.abs(display.screenOriginX),
	visakY = math.abs(display.screenOriginY)
}

--local function dodir(event)
	--local t = event.target
	
	--if(event.phase == "began") then
		--print("Began")
	--elseif(event.phase == "moved") then
		--print("Moved")
		--t.x = event.x
		--t.y = event.y
	--elseif(event.phase == "ended") then
		--print("Ended")
		--local r = math.random(0,255) / 255
		--local g = math.random(0,255) / 255
		--local b = math.random(0,255) / 255
		--slika:setFillColor(r, g, b)
	--end
--end

Slike = {
	bcg = display.newImageRect("images/bcg.jpg", Global.screenWidth+Global.visakX * 2, Global.screenHeight+Global.visakY * 2),
	--slika = display.newImageRect("images/white.png", 100, 100)
}
Slike.bcg.x = Global.screenWidth * 0.5
Slike.bcg.y = Global.screenHeight * 0.5
Slike.bcg:toBack()


--Slike.slika.anchorX = 0
--Slike.slika.anchorY = 1
--Slike.slika.x = Global.screenWidth * 0.5
--Slike.slika.y = Global.screenHeight * 0.5
--Slike.slika:addEventListener("touch", dodir)

composer.gotoScene("lua.menu")


-- local function monitorMem()
	-- if mem ~= nil then
	-- mem = nil
	-- end
		 -- collectgarbage()
	-- local textMem = system.getInfo( "textureMemoryUsed" ) / 1000000
	-- print("MemUsage: " .. collectgarbage("count") ,  "TexMem:   " .. textMem)
	-- mem = timer.performWithDelay(1000,monitorMem)
-- end

--monitorMem() 