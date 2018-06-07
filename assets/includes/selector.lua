--! file: selector.lua

Selector = Object:extend()

-- testing
-- lovebird = require("assets.lib.lovebird")

mapWidth = nil
mapHeight = nil

function Selector.new(self, w, h)
    self.sprite = love.graphics.newImage("assets/images/selector0.png")
    x = 252
    y = 210
    mapWidth = w
    mapHeight = h
end

function Selector.update(self, dt)
    -- testing
    -- lovebird.update()
end

function Selector.draw(self)
    love.graphics.draw(assets.images.selector0, x, y)
end

function canMove(dir)
    if dir == "right" then
        if x < mapWidth - 42 then
            return true
        end
    elseif dir == "left" then
        if x > 0 then
            return true
        end
    elseif dir == "up" then
        if y > 0 then
            return true
        end
    elseif dir == "down" then
        if y < mapHeight - 42 then
            return true
        end
    end
end

function love.keypressed(key)
    if key == "right" and canMove("right") == true then
        x = x + 42
    elseif key == "left" and canMove("left") == true then
        x = x - 42
    elseif key == "up" and canMove("up") == true then
        y = y - 42
    elseif key == "down" and canMove("down") == true then
        y = y + 42
    end
end