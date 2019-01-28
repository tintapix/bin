--[[
	Common demo for some functions. See game_lua.html 
	Use calear command( clear.lua script) to recreate scene
]]--


math.randomseed( os.time() )


local Group = "DemoGroup" 

local objectToRotate = nil

-- trying rotate object every 2 seconds
function timerRotate()

	-- random object id 
	local randId = math.random(0, game.objects(Group) - 1)
	
	util.msg("rotating ", randId )
	
	game.rotate( Group, randId ,90, 0.04 )

end

function mouseLeft()

	-- change material parameter
	game.materialparam( Group, 0, "fill.material","color", 
								math.random(0,255)/255, math.random(0,255)/255, math.random(0,255)/255, 0.5 )

end


game.addgroup(Group)

-- with materials
game.addobject( Group, 500.0, 500.0, 300.0, "fill.material" )

game.addobject( Group, 300.0, 300.0, 500.0, "TVnoise.material" )

game.addobject( Group, 200.0, 200.0, 100.0, "image.material" )


-- with texture
game.addobject( Group, 200.0, 500.0, 100.0, "tree.png" )

-- add timer
game.addaction("timer", 2000 , "timerRotate()")

--key handle mouse left
game.addaction("key_down", 0xEE, "mouseLeft()") 

