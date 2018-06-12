--! file: map.lua

Map = class("Map")

sti = require("assets/lib/sti")

function Map:initialize(path)
    self.map = sti(path)
    self.width = love.graphics.getWidth()
    self.height = love.graphics.getHeight()
end

function Map:draw()
    self.map:draw(0,0)
end