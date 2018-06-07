function love.load()
    assets = require("assets.lib.cargo").init("assets")
    Object = require("assets.lib.classic")
    require("assets.includes.map")
    require("assets.includes.selector")
    lovebird = require("assets.lib.lovebird")

    map = Map("assets/maps/tutorial.lua")
    selector = Selector(map.width, map.height)
end

function love.update(dt)
    -- lovebird.update()
    map:update(dt)
    selector.update(dt)
end

function love.draw()
    map:draw()
    love.graphics.print(love.timer.getFPS())
    selector:draw()
end