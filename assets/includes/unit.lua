--! file: unit.lua

Unit = class("Unit")

function Unit:initialize(type, x, y, hp, ammo, fuel, isAlly, isEnemy, isActive, moveRange, attackRange)
    self.type = type or nil
    self.x = x or 0
    self.y = y or 0
    self.hp = hp or 10
    self.ammo = ammo or 0
    self.fuel = fuel or 99
    self.isAlly = isAlly or nil
    self.isEnemy = isEnemy or nil
    self.isActive = isActive or nil
    self.moveRange = moveRange or nil
    self.attackRange = attackRange or nil
end

function Unit:draw()
    if self.type == "infanteria" then
        if self.isAlly == true then
            if self.isEnemy == true then
                love.graphics.draw(assets.images.inf_azul_0, self.x, self.y)
            else
                love.graphics.draw(assets.images.inf_rojo_0, self.x, self.y)
            end
        else
            love.graphics.draw(assets.images.inf_azul_0, self.x, self.y)
        end
    end
end