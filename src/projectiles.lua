local class = require('lib.middleclass')

local gr = love.graphics


local Bullet = class('Bullet')
function Bullet:initialize()
   self.x = 0
   self.y = 0
end

function Bullet:move()
   self.x = self.x + 1
   self.y = self.y + 1
end

function Bullet:draw()
end

local Grenade = class('Grenade')
function Grenade:initialize()
end

return { Bullet, Grenade }