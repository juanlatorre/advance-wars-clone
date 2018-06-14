--! file: ui.lua

UI = class("UI")

function UI:initialize(x, y, type)
    self.x = x or 0
    self.y = y or 0
    self.h = nil
    self.w = nil
    self.type = type or nil 
end

function UI:moveTo(x,y)
    self.x = x
    self.y = y
end

function UI:draw()
    if self.type == "dia" then
        love.graphics.draw(assets.images.ui_day, self.x, self.y)
    end

    if self.type == "terreno" then
        love.graphics.draw(assets.images.ui_terrain, self.x, self.y)
    end
end