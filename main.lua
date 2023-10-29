function love.load()
 changeScene("menu")
end
function love.update(dt)
 if Scene.update then Scene:update(dt) end
end
function love.draw()
 if Scene.draw then Scene:draw() end
end
function love.mousepressed( x, y, msbutton, istouch, presses )
  if Scene.mousepressed then Scene:mousepressed( x, y, msbutton, istouch, presses) end
end
function love.mousereleased( x, y, msbutton, istouch, presses )
  if Scene.mousereleased then Scene:mousereleased( x, y, msbutton, istouch, presses) end
end
function changeScene(nextScene)
  Scene = require(nextScene)
  if Scene.load then Scene:load() end
end