-- Global imports
local ffi = require 'ffi'

-- Load 3rd party libraries from lib
local kIncPath = './lib/'
local class = require(kIncPath .. 'middleclass')
local vector = require(kIncPath .. 'vector-light')


-- Import classes from our own sources
local kIncPath = './src/'

RectGuy = require(kIncPath .. 'player')
AppState = require(kIncPath .. 'appstate')
Projectiles = require(kIncPath .. 'projectiles')




-- Create local alias
local gr = love.graphics
local kb = love.keyboard


-- Globals
gAs = nil            -- Application state
gPlayer = nil        -- Player character



--[[
   Load, setup & initialize game resources
]]
function love.load(arg)
   -- Create global application state
   gAs = AppState:new()
   gPlayer = RectGuy:new()
   
   local start = os.clock()
   for i=1, 100000, 1 do
      --local x = ffi.C.sqrt(i)
      --ocal x = math.sqrt(i)
   end
   print(os.clock() - start)
end

--[[
   Update game objects
]]
function love.update(dt) 
   -- Lock down dt if game temp freezes
   if dt > 0.15 then
      dt = 0.15
   end
   
   gPlayer:move(dt)
   
end

--[[
   Draw loop
]]
function love.draw()
   --gr.print("Hello World", gAs:moveRight(), 230)  
   
   ---[[
   --gr.circle('fill', 200, 300, 50, 50)
   -- gr.rectangle("fill", 300, 300, 100, 100)
   --gr.arc("fill", 450, 300, 100, math.pi/5, math.pi/2)
   --]]
   
   gPlayer:draw()
   
   -- Restore origin to upper left
   gr.origin()
   -- gr.print("Current FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end


