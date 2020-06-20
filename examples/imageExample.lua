function love.load()

  Object = require "classic"

  require "shape"
  require "rectangle"
  require "circle"
  
  r1 = Rectangle(100, 100, 200, 50)
  r2 = Circle(350, 80, 40)
  
  myImage = love.graphics.newImage("sheep.png")
  love.graphics.setBackgroundColor(1,1,1)

  
end

function love.update(dt)
  --r1.update(r1, dt)
  r1:update(dt)
  r2:update(dt)

end

function love.draw()
  --r1.draw(r1)
  r1:draw()
  r2:draw()
  
  love.graphics.setColor(255/255, 200/255, 40/255, 127/255)
  love.graphics.draw(myImage, 100, 100)
  
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(myImage, 200, 100, 0, 2, 2)
  
  
end






