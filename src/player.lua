local class = require('lib.middleclass')

-- Aliases
local gr = love.graphics
local kb = love.keyboard

--[[
   The Player object is rectangle controlled by the player
]]

local Player = class('Player')
function Player:initialize()
   self.x = 215
   self.y = 235
   self.angle = 0
   self.width = 20
   self.height = 70
end;

function Player:draw()
   -- Set origin to center of rectangle
   gr.translate(self.x, self.y)   
   gr.rotate(self.angle)
   gr.setColor(10, 40, 125)
   gr.rectangle('fill', -(self.width/2), -(self.height/2), self.width, self.height)
end;

function Player:move(dt)
   local kMvFactor = 80
   local kRotFactor = 1.5
   
   -- Rotate the player on 'a' or 'd' keys
   if kb.isDown('d') then
      self.angle = self.angle + math.pi * dt * kRotFactor
   elseif kb.isDown('a') then
      self.angle = self.angle - math.pi * dt * kRotFactor
   end
   
   -- Move player with arrow keys. Make sure they're is still on screen
   w, h = gr.getDimensions()
   
   if kb.isDown('up') then
      if self.y > 1 then
         self.y = self.y - 1 * dt * kMvFactor
      end
   elseif kb.isDown('down') then
      if self.y < h-1 then
         self.y = self.y + 1 * dt * kMvFactor
      end
   elseif kb.isDown('left') then
      if self.x > 1 then
         self.x = self.x - 1 * dt * kMvFactor
      end
   elseif kb.isDown('right') then
      if self.x < w-1 then
         self.x = self.x + 1 * dt * kMvFactor     
      end
   end
end


return Player


   
