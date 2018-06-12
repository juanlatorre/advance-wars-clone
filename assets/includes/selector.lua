--! file: selector.lua

Selector = class("Selector")

function Selector:initialize(width, height)
    self.width = width or nil
    self.height = height or nil
    self.sprite = love.graphics.newImage("assets/images/selector0.png")
    -- hardcoded, arreglar más adelante
    self.x = 252 or 0
    self.y = 210 or 0
end

function Selector:draw()
    love.graphics.draw(assets.images.selector0, self.x, self.y)
end

function Selector:select(x,y)
    
end

function Selector:update()
    function love.keypressed(key)
        if key == "right" and self.x < self.width - 42 then
            self.x = self.x + 42
        elseif key == "left" and self.x > 0 then
            self.x = self.x - 42
        elseif key == "up" and self.y > 0 then
            self.y = self.y - 42
        elseif key == "down" and self.y < self.height - 42 then
            self.y = self.y + 42
        end

        if key == "z" then
            self:select(self.x, self.y)
        end
    end
end