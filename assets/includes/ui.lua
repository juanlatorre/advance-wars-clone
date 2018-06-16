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
    end
end

function UI:setUnitData(type, hp, ammo, fuel)
    set_font("aw2", 32)
    self.name = {
        text = love.graphics.newText(font, type),
        x = 11.55*42,
        y = 6.15*42
    }
    set_font("aw2", 22)
    self.hp = {
        text = love.graphics.newText(font, hp),
        x = 12.2*42,
        y = 7.8*42
    }
    self.ammo = {
        text = love.graphics.newText(font, ammo),
        x = 12.2*42,
        y = 8.2*42
    }
    self.fuel = {
        text = love.graphics.newText(font, fuel),
        x = 12.2*42,
        y = 8.6*42
    }
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
            self.x, self.y = 11.2*42, 6*42 -- x:470.4, en x:512.4 empieza texto 12.2*42
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
        end

    end
end

function UI:draw()
    if self.show then
        love.graphics.draw(self.sprite, self.x, self.y)
    end

    if self.show and self.type == "unidad" then
        love.graphics.draw(self.name.text, self.name.x, self.name.y)
        love.graphics.draw(self.hp.text, self.hp.x, self.hp.y)
        love.graphics.draw(self.ammo.text, self.ammo.x, self.ammo.y)
        love.graphics.draw(self.fuel.text, self.fuel.x, self.fuel.y)
    end
end