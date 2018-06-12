function love.load()
    -- Importar librerías
    assets = require("assets.lib.cargo").init("assets")
    lovebird = require("assets.lib.lovebird")
    class = require("assets.lib.middleclass")

    -- Importar clases
    require("assets.includes.map")
    require("assets.includes.selector")
    require("assets.includes.unit")

    -- Generar clases
    map = Map:new("assets/maps/tutorial.lua")
    selector = Selector:new(map.width, map.height)
    
    -- Poblamos Unidades de Muestra
    inf_rojo_1 = Unit:new("infanteria", 42*5, 42*3, 10, 0, 99, true, false, true)
    inf_rojo_2 = Unit:new("infanteria", 42*3, 42*5, 10, 0, 99, true, false, true)

    inf_azul_1 = Unit:new("infanteria", 42*14, 42*6, 10, 0, 99, false, true, true)
    inf_azul_2 = Unit:new("infanteria", 42*14, 42*8, 10, 0, 99, false, true, true)
end

function love.update(dt)
    lovebird.update()
    selector:update(dt)
end

function love.draw()
    love.graphics.print(love.timer.getFPS())
    -- z-index: 0
    map:draw()
    
    -- z-index: 1
    inf_rojo_1:draw()
    inf_rojo_2:draw()

    inf_azul_1:draw()
    inf_azul_2:draw()

    -- z-index: 2
    selector:draw()
end