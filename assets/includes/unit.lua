--! file: unit.lua

Unit = class("Unit")

function Unit:initialize(type, x, y, hp, ammo, fuel, is_ally, is_enemy, is_active, move_range, attack_range)
    self.type = type or nil
    self.x = x or 0
    self.y = y or 0
    self.hp = hp or 10
    self.ammo = ammo or 0
    self.fuel = fuel or 99
    self.is_ally = is_ally or nil
    self.is_enemy = is_enemy or nil
    self.is_active = is_active or nil
    self.move_range = move_range or nil
    self.attack_range = attack_range or nil
    self.id = self.type .. self.x .. self.y

    self.states = {
        idle = (self.id)
    }

    if self.type == "Inftry" then
        if self.is_ally == true then
            if self.is_enemy == true then
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
