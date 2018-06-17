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
    
    if self.type == "Inftry" then
        if self.isAlly == true then
            if self.isEnemy == true then
                self.sprite = love.graphics.newImage("assets/images/inf_azul_0.png")
            else
                self.sprite = love.graphics.newImage("assets/images/inf_rojo_0.png")
            end
        else
            self.sprite = love.graphics.newImage("assets/images/inf_azul_0.png")
        end
    end
end

function Unit:draw()
    love.graphics.draw(self.sprite, self.x, self.y)
end