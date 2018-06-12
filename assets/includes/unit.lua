--! file: unit.lua

Unit = Object:extend()

function Unit:new(type, x, y, hp, ammo, fuel, isAlly, isEnemy, isActive, moveRange, attackRange)
    self.type = type or nil
    self.x = x or nil
    self.y = y or nil
    self.hp = hp or nil
    self.ammo = ammo or nil
    self.fuel = fuel or nil
    self.isAlly = isAlly or nil
    self.isEnemy = isEnemy or nil
    self.isActive = isActive or nil
    self.moveRange = moveRange or nil
    self.attackRange = attackRange or nil
end

function Unit:draw(self)
    love.graphics.draw(assets.images.infanteria_rojo)
end