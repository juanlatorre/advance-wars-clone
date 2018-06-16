--! file: ui.lua

UI = class("UI")

function UI:initialize(x, y, type)
    self.x = x or 0
    self.y = y or 0
    self.h = nil
    self.w = nil
    self.type = type or nil
    self.hpOfUnit = nil
    self.ammoOfUnit = nil
    self.fuelOfUnit = nil

    if self.type == "dia" then
        self.sprite = love.graphics.newImage("assets/images/ui_day.png")
        self.show = true
    end

    if self.type == "terreno" then
        self.sprite = love.graphics.newImage("assets/images/ui_terrain.png")
        self.show = true
    end

    if self.type == "unidad" then
        self.sprite = love.graphics.newImage("assets/images/ui_unit_inftry_red.png")
        self.show = false
    end
end

function UI:moveTo(x,y)
    self.x = x
    self.y = y
end

function UI:draw()
    if self.show then
        love.graphics.draw(self.sprite, self.x, self.y)
    end
end