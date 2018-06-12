function love.load()
    -- Importar librerías
    assets = require("assets.lib.cargo").init("assets")
    lovebird = require("assets.lib.lovebird")
    class = require("assets.lib.middleclass")

    -- Importar clases
    require("assets.includes.map")
    require("assets.includes.selector")

    -- Generar clases
    map = Map:new("assets/maps/tutorial.lua")
    selector = Selector:new(map.width, map.height)
end

function love.update(dt)
    lovebird.update()
    selector:update(dt)
end

function love.draw()
    love.graphics.print(love.timer.getFPS())
    map:draw()
    selector:draw()
end