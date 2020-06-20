function love.load()
  package.path = package.path .. ";../?.lua"
  print(package.path)
  Object = require "classic"
  require "player"
  
  player = Player()
  
end

function love.update(dt)

end

function love.draw()

end

