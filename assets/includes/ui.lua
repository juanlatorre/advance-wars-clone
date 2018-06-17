--! file: ui.lua

UI = class("UI")

function UI:initialize(x, y, type)
    self.x = x or 0
    self.y = y or 0
    self.h = nil
    self.w = nil
    self.type = type or nil

    if self.type == "dia" then
        self.sprite = love.graphics.newImage("assets/images/ui_day.png")
        self.show = true
    end

    if self.type == "terreno" then
        self.sprite = love.graphics.newImage("assets/images/ui_terrain.png")
        self.show = true
    end

    if self.type == "unidad" then
        self.sprite = love.graphics.newImage("assets/images/ui_unit.png")
        self.show = false
        self.unit = {
            name = {},
            sprite = {},
            hp = {},
            ammo = {},
            fuel = {}
        }
    end
end

function UI:setUnitData(type, hp, ammo, fuel, sprite)
    set_font("aw2", 32)
    self.unit.name.text = love.graphics.newText(font, type)
    self.unit.sprite.image = sprite
    set_font("aw2", 22)
    self.unit.hp.text = love.graphics.newText(font, hp)
    self.unit.ammo.text = love.graphics.newText(font, ammo)
    self.unit.fuel.text = love.graphics.newText(font, fuel)
end

function UI:moveTo(dir)
    if dir == "right" then
        if self.type == "dia" then
            self.x, self.y = 10*42, 0*42
        end

        if self.type == "terreno" then
            self.x, self.y = 13*42, 6*42
        end

        if self.type == "unidad" then
            self.x, self.y = 11.2*42, 6*42
            -- también movemos la info de cada unidad
            self.unit.name.x, self.unit.name.y = 11.5*42, 6.15*42
            self.unit.sprite.x, self.unit.sprite.y = 11.7*42, 6.73*42
            self.unit.hp.x, self.unit.hp.y = 12.2*42, 7.8*42
            self.unit.ammo.x, self.unit.ammo.y = 12.2*42, 8.2*42
            self.unit.fuel.x, self.unit.fuel.y = 12.2*42, 8.6*42
        end
    end

    if dir == "left" then
        if self.type == "dia" then
            self.x, self.y = 0*42, 0*42
        end

        if self.type == "terreno" then
            self.x, self.y = 0.5*42, 6*42
        end
        
        if self.type == "unidad" then
            self.x, self.y = 2.3*42, 6*42
            -- también movemos la info de cada unidad
            self.unit.name.x, self.unit.name.y = 2.6*42, 6.15*42
            self.unit.sprite.x, self.unit.sprite.y = 2.7*42, 6.73*42
            self.unit.hp.x, self.unit.hp.y = 3.3*42, 7.8*42
            self.unit.ammo.x, self.unit.ammo.y = 3.3*42, 8.2*42
            self.unit.fuel.x, self.unit.fuel.y = 3.3*42, 8.6*42
        end

    end
end

function UI:draw()
    if self.show then
        love.graphics.draw(self.sprite, self.x, self.y)
    end

    if self.show and self.type == "unidad" then
        love.graphics.draw(self.unit.name.text, self.unit.name.x, self.unit.name.y)
        love.graphics.draw(self.unit.sprite.image, self.unit.sprite.x, self.unit.sprite.y)
        love.graphics.draw(self.unit.hp.text, self.unit.hp.x, self.unit.hp.y)
        love.graphics.draw(self.unit.ammo.text, self.unit.ammo.x, self.unit.ammo.y)
        love.graphics.draw(self.unit.fuel.text, self.unit.fuel.x, self.unit.fuel.y)
    end
end