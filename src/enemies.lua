local class = require('lib.middleclass')

local Projectiles = require("src.projectiles")


local gr = love.graphics


local GunTurret = class('GunTurret')
function GunTurret:initialize()
end

function GunTurret:draw()
end


return { GunTurret }