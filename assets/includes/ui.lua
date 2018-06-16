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
end