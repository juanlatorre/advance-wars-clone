local push = require("assets.lib.push")

local GAME_WIDTH, GAME_HEIGHT = 630, 420
local WINDOW_WIDTH, WINDOW_HEIGHT = 630, 420

push:setupScreen(GAME_WIDTH, GAME_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {fullscreen = false, pixelperfect = true})

function love.load()
   -- Importar librerías
   assets = require("assets.lib.cargo").init("assets")
   lovebird = require("assets.lib.lovebird")
   class = require("assets.lib.middleclass")
   
   -- Importar clases
   require("assets.includes.map")
   require("assets.includes.selector")
   require("assets.includes.unit")
   require("assets.includes.ui")
   
   -- Generar clases
   map = Map:new("assets/maps/tutorial.lua")
   selector = Selector:new(map.width, map.height)
   ui_day = UI:new(0, 0, "dia")
   ui_terrain = UI:new(13*42, 6*42, "terreno")
   ui_unit = UI:new(11.2*42, 6*42, "unidad")
   
   objetos = {
      aliados = {},
      enemigos = {}
   }
   -- Poblamos Unidades de Muestra y las agregamos a la tabla de objetos
   inf_rojo_1 = Unit:new("Inftry", 42*5, 42*3, 10, 0, 99, true, false, true, "assets/images/inf_rojo_0.png")
   inf_rojo_2 = Unit:new("Inftry", 42*3, 42*5, 10, 0, 99, true, false, true, "")
   objetos.aliados.inf_rojo_1 = inf_rojo_1
   objetos.aliados.inf_rojo_2 = inf_rojo_2
   
   inf_azul_1 = Unit:new("Inftry", 42*13, 42*5, 10, 0, 99, false, true, true, "")
   inf_azul_2 = Unit:new("Inftry", 42*13, 42*8, 10, 0, 99, false, true, true, "")
   objetos.enemigos.inf_azul_1 = inf_azul_1
   objetos.enemigos.inf_azul_2 = inf_azul_2
   
   font = love.graphics.newFont("assets/fonts/aw2.ttf", 32)
end

function set_font(name, size)
   font = love.graphics.newFont("assets/fonts/" .. name .. ".ttf", size)
   love.graphics.setFont(font)
end

function love.update(dt)
   require("assets.lib.lurker").update()
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
   ui_day:draw()
   ui_terrain:draw()
   ui_unit:draw()
   
   -- z-index: 3
   selector:draw()
   
   push:finish()
end