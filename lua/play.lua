local scene = composer.newScene()
local screenGroup

function onButtonTouch(event)
	local t = event.target;
	if event.phase == "began" then
		display.getCurrentStage():setFocus( t )
		
	elseif event.phase == "moved" then
	
	elseif event.phase == "ended" then
		display.getCurrentStage():setFocus( nil )
		
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