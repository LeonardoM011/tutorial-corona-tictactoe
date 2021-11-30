local scene = composer.newScene()
local screenGroup

local function createTitle()
	--print("Create Title")
	
	local function createMenu()
		playTextGroup = display.newGroup()
		screenGroup:insert(playTextGroup)
		
		exitTextGroup = display.newGroup()
		screenGroup:insert(exitTextGroup)
		
		local playText = display.newText("Play", Global.screenWidth * 0.5, Global.screenHeight * 0.5, FONT5, 40)
		playText.alpha = 0
		
		local playRect = display.newRect(playText.x, playText.y, playText.width, playText.height)
		playRect:setFillColor(1,1,1,0)
		
		local exitText = display.newText("Exit", Global.screenWidth * 0.5, Global.screenHeight * 0.5 + playText.height, FONT5, 40)
		exitText.alpha = 0
		
		local exitRect = display.newRect(exitText.x, exitText.y, exitText.width, exitText.height)
		exitRect:setFillColor(1,1,1,0)
		
		transition.to(playText, {alpha = 1, time = 300})
		transition.to(exitText, {delay = 150, alpha = 1, time = 300})
		
		playTextGroup:insert(playText)
		playTextGroup:insert(playRect)
		exitTextGroup:insert(exitText)
		exitTextGroup:insert(exitRect)
		
		playTextGroup:addEventListener("touch", onButtonTouch)
		exitTextGroup:addEventListener("touch", onButtonTouch)
	end
	
	tic = display.newText("Tic", Global.screenWidth * 0.5 - 90, Global.screenHeight * 0.15 - Global.visakY, FONT5, 55)
	tic.xScale = 0.8
	tic.yScale = 0.8
	tic.alpha = 0
	tic:toFront()
	screenGroup:insert(tic)
	
	tac = display.newText("Tac", Global.screenWidth * 0.5, Global.screenHeight * 0.15 - Global.visakY, FONT5, 55)
	tac.xScale = 0.8
	tac.yScale = 0.8
	tac.alpha = 0
	tac:toFront()
	screenGroup:insert(tac)
	
	toe = display.newText("Toe", Global.screenWidth * 0.5 + 90, Global.screenHeight * 0.15 - Global.visakY, FONT5, 55)
	toe.xScale = 0.8
	toe.yScale = 0.8
	toe.alpha = 0
	toe:toFront()
	screenGroup:insert(toe)
	
	transition.to(tic, {xScale = 1, yScale = 1, alpha = 1, time = 800, transition = easing.outElastic})
	transition.to(tac, {delay = 500, xScale = 1, yScale = 1, alpha = 1, time = 800, transition = easing.outElastic})
	transition.to(toe, {delay = 1000, xScale = 1, yScale = 1, alpha = 1, time = 800, transition = easing.outElastic, onComplete = createMenu})
end

function onButtonTouch(event)
	local t = event.target;
	if event.phase == "began" then
		display.getCurrentStage():setFocus( t )
		
	elseif event.phase == "moved" then

	elseif event.phase == "ended" then
		display.getCurrentStage():setFocus( nil )
		if (t == playTextGroup) then
			print("PLAY")
		elseif (t == exitTextGroup) then
			os.exit()
		end
	end
	return true
end

function scene:show( event )
 
    screenGroup = self.view
    local phase = event.phase
	
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
		createTitle()
	end
	
end

function scene:create( event )
 
    local screenGroup = self.view

end
 
-- hide()
function scene:hide( event )
 
    local screenGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
	  
	end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local screenGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene