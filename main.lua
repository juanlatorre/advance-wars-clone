function love.load()
    assets = require("assets.lib.cargo").init("assets")
    Object = require("assets.lib.classic")
    require("assets.includes.map")
    lovebird = require("assets.lib.lovebird")

    map = Map("assets/maps/tutorial.lua")
end

function love.update(dt)
    lovebird.update()
    map:update(dt)
end

function love.draw()
    map:draw()
end