--! file: selector.lua

Selector = class("Selector")

local oneTime = nil

function Selector:initialize(width, height)
   self.width = width or nil
   self.height = height or nil
   self.sprite = love.graphics.newImage("assets/images/selector0.png")
   -- hardcoded, arreglar más adelante
   self.x = 252 or 0
   self.y = 210 or 0
end

function Selector:draw()
   love.graphics.draw(assets.images.selector0, self.x, self.y)
end

function Selector:analyze_ui()
   -- analizamos la posición del indicador de Día por jugador
   if self.y < 5*42 then
      if self.x < 8*42 then
         ui_day:move_to("right")
      else
         ui_day:move_to("left")
      end
   end
   
   -- analizamos la posición del indicador de terreno y de unidades
   if self.y > 3*42 then
      if self.x < 8*42 then
         ui_terrain:move_to("right")
         ui_unit:move_to("right")
      else
         ui_terrain:move_to("left")
         ui_unit:move_to("left")
      end
   end
end

function Selector:check_map_tile()
   ui_unit.show = false
   -- Verificar si hay una unidad en el selector
   for i,x in pairs(objetos) do
      for k,objeto in pairs(x) do
         if self.x == objeto.x and self.y == objeto.y then
            ui_unit.show = true
            ui_unit:set_unit_data(objeto.type, objeto.hp, objeto.ammo, objeto.fuel, objeto.sprite)
         end
      end
   end
   -- Verificar el terreno en el selector
   local layer_mt = map.map:getTileProperties("Mt", (self.x+42)/42, (self.y+42)/42)
   local layer_wood = map.map:getTileProperties("Wood", (self.x+42)/42, (self.y+42)/42)
   local layer_plain = map.map:getTileProperties("Plain", (self.x+42)/42, (self.y+42)/42)
   
   -- Comprobamos si hay MT
   if next(layer_mt) then
      lovebird.print("si hay montaña") -- debug
      ui_terrain.sprite = love.graphics.newImage("assets/images/ui_terrain_mt.png")
   else
      -- Comprobamos si hay Bosque
      if next(layer_wood) then
         lovebird.print("si hay bosque") -- debug
         ui_terrain.sprite = love.graphics.newImage("assets/images/ui_terrain_wood.png")
      else
         -- Comprobamos si hay Planicie
         if next(layer_plain) then
            lovebird.print("si hay planicie") -- debug
            ui_terrain.sprite = love.graphics.newImage("assets/images/ui_terrain_plain.png")
         else
            lovebird.print("no hay nada") -- debug
            ui_terrain.sprite = love.graphics.newImage("assets/images/ui_terrain.png")
         end
      end
   end
end

function Selector:select(x,y)
   lovebird.print("z pressed at " .. self.x, self.y)
end

function Selector:update()
   while not once do
      self:analyze_ui()
      self:check_map_tile()
      once = 0
   end
   
   function love.keypressed(key)
      if key == "right" and self.x < self.width - 42 then
         self.x = self.x + 42
         self:analyze_ui()
         self:check_map_tile()
      elseif key == "left" and self.x > 0 then
         self.x = self.x - 42
         self:analyze_ui()
         self:check_map_tile()
      elseif key == "up" and self.y > 0 then
         self.y = self.y - 42
         self:analyze_ui()
         self:check_map_tile()
      elseif key == "down" and self.y < self.height - 42 then
         self.y = self.y + 42
         self:analyze_ui()
         self:check_map_tile()
      end
      
      if key == "z" then
         self:select(self.x, self.y)
      end
   end
end