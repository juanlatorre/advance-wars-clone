--! file: map.lua

Map = Object:extend()

sti = require("assets/lib/sti")

function Map.new(self, rute)
    self.map = sti(rute)
end

function Map.update(self, dt)
    self.map:update(dt)
end

function Map.draw(self)
    self.map:draw()
end