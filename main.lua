function love.load()
    assets = require("assets.lib.cargo").init("assets")
    Object = require("assets.lib.classic")
    require("assets.includes.map")
    lovebird = require("assets.lib.lovebird")
    sti = require("assets.lib.sti")

    map = sti("assets/maps/tutorial.lua")

    tile = {}

    tilemap = {
        {3,3,3,2,2,1,1,1,1,3,3,3,3,3,3}, 
        {3,3,2,2,1,1,1,1,1,1,3,3,2,3,3}, 
        {3,1,1,1,1,1,1,1,1,1,1,1,1,2,3}, 
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,2}, 
        {3,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, 
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,3}, 
        {2,1,1,1,1,1,1,1,1,1,1,1,1,3,3}, 
        {3,2,1,1,1,1,1,1,1,1,1,1,3,3,3}, 
        {3,3,3,1,1,1,3,1,1,1,1,3,3,3,3}, 
        {3,3,3,3,1,3,3,3,1,3,3,3,3,3,3}
    }
end

function love.update(dt)
    lovebird.update()
    map:update(dt)
end

function love.draw()
    local imageTile
    for i,row in ipairs(tilemap) do
        for j,tile in ipairs(row) do
            if tile ~= 0 then
                if tile == 1 then
                    imageTile = assets.images.pasto
                elseif tile == 2 then
                    imageTile = assets.images.arbol
                elseif tile == 3 then
                    imageTile = assets.images.montana
                end
                love.graphics.draw(imageTile, j * 42-42, i * 42-42)
            end
        end
    end
    map:draw()
end