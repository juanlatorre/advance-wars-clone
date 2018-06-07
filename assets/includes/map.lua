--! file: map.lua

Map = Object:extend()

cartographer = require("assets.lib.cartographer")

function Map.new(self, path)
    self.map = cartographer.load(path)
end

function Map.update(self, dt)
    self.map:update(dt)
end

function Map.draw(self)
    self.map:draw()
end