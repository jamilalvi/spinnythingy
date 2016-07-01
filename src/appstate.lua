local kIncPath = '../lib/'
local class = require(kIncPath .. 'middleclass')

local gr = love.graphics

-- Global application state
local AppState = class('AppState')
function AppState:initialize()
   -- Private
   self._idx = 0
   
   -- Setup screen
   gr.setLineStyle('smooth')
   gr.setFont(gr.newFont(20))
   gr.setColor(4, 66, 0, 255)
   gr.setBackgroundColor(255, 150, 3)
end

return AppState
