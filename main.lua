local push = require("assets.lib.push")

local gameWidth, gameHeight = 630, 420
local windowWidth, windowHeight = 630, 420

push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = false, pixelperfect = true})

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
    
    local objetos = {
        aliados = {},
        enemigos = {}
    }
    -- Poblamos Unidades de Muestra y las agregamos a la tabla de objetos
    inf_rojo_1 = Unit:new("infanteria", 42*5, 42*3, 10, 0, 99, true, false, true)
    inf_rojo_2 = Unit:new("infanteria", 42*3, 42*5, 10, 0, 99, true, false, true)
    objetos.aliados.inf_rojo_1 = inf_rojo_1
    objetos.aliados.inf_rojo_2 = inf_rojo_2

    inf_azul_1 = Unit:new("infanteria", 42*14, 42*6, 10, 0, 99, false, true, true)
    inf_azul_2 = Unit:new("infanteria", 42*14, 42*8, 10, 0, 99, false, true, true)
    objetos.enemigos.inf_azul_1 = inf_azul_1
    objetos.enemigos.inf_azul_2 = inf_azul_2
end

function love.update(dt)
    lovebird.update()
    selector:update(dt)
end

function love.draw()
    push:start()
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
    
    push:finish()
end