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

function Selector:analyzeUI()
    -- analizamos la posición del indicador de Día por jugador
    if self.y < 5*42 then
        if self.x < 8*42 then
            ui_day:moveTo("right")
        else
            ui_day:moveTo("left")
        end
    end

    -- analizamos la posición del indicador de terreno y de unidades
    if self.y > 3*42 then
        if self.x < 8*42 then
            ui_terrain:moveTo("right")
            ui_unit:moveTo("right")
        else
            ui_terrain:moveTo("left")
            ui_unit:moveTo("left")
        end
    end
end

function Selector:checkMapTile()
    ui_unit.show = false
    -- Verificar si hay una unidad en el selector
    for i,x in pairs(objetos) do
        for k,objeto in pairs(x) do
            if self.x == objeto.x and self.y == objeto.y then
                ui_unit.show = true
                ui_unit.hpOfUnit = objeto.hp
                ui_unit.ammoOfUnit = objeto.ammo
                ui_unit.fuelOfUnit = objeto.fuel
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
        self:analyzeUI()
        self:checkMapTile()
        once = 0
    end

    function love.keypressed(key)
        if key == "right" and self.x < self.width - 42 then
            self.x = self.x + 42
            self:analyzeUI()
            self:checkMapTile()
        elseif key == "left" and self.x > 0 then
            self.x = self.x - 42
            self:analyzeUI()
            self:checkMapTile()
        elseif key == "up" and self.y > 0 then
            self.y = self.y - 42
            self:analyzeUI()
            self:checkMapTile()
        elseif key == "down" and self.y < self.height - 42 then
            self.y = self.y + 42
            self:analyzeUI()
            self:checkMapTile()
        end

        if key == "z" then
            self:select(self.x, self.y)
        end
    end
end