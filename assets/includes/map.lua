--! file: map.lua

Map = class("Map")

sti = require("assets/lib/sti")

function Map:initialize(path)
    self.map = sti(path, { "box2d" })
    self.width = love.graphics.getWidth()
    self.height = love.graphics.getHeight()
    love.physics.setMeter(42)
    self.world = love.physics.newWorld(0,0)
    self.map:box2d_init(self.world)
end

function Map:draw()
    self.map:draw(0,0)
end