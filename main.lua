function love.load()
  image = love.graphics.newImage("assets/fantasy/upscale3.png")
  frames = {}
  
  local width = image:getWidth()
  local height = image:getHeight()
  
  local frame_width = 96
  local frame_height = 96
  
  for i = 0, 3 do
    table.insert(frames, love.graphics.newQuad(i*frame_width,0, frame_width, frame_height, width, height ))
    end
  
  
  flameFrames = {}
  for i = 6, 13 do
    table.insert(flameFrames, love.graphics.newQuad(i*frame_width, 5*frame_height, frame_width, frame_height, width, height))
  end
  
  
  currentFrame = 1
  flameFrame = 1
  
end

function love.draw()
  love.graphics.draw(image, frames[math.floor(currentFrame)], 100, 100)
  
  love.graphics.draw(image, flameFrames[math.floor(flameFrame)], 100, 200)
  
end

function love.update(dt)
  currentFrame = currentFrame + 10*dt
  flameFrame = flameFrame + 10*dt
  
  if currentFrame >= 5 then 
    currentFrame = 1
  end
  
  if flameFrame >= 8 then 
    flameFrame = 1
  end
  
  
end

