
function love.conf(t)
   -- Setup window properties
   t.window.width = 800
   t.window.height = 600
   t.window.title = "Spinny Thingy"
   
   t.identity = 'SpinnyThing'
   t.version = "0.9.1"
   
   -- Disable unused modules
   t.modules.physics = false
   t.modules.joystick = false
   t.modules.console = true
end



