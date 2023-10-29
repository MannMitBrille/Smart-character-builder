local Scene = {}
local ButtonManager = require('src/sbm/simplebutton')
function Scene:load()
  dice = love.graphics.newImage("src/dice.jpg")
 gem = love.graphics.newImage("src/gem.jpg")
 hat = love.graphics.newImage("src/hat.jpg")
 sword = love.graphics.newImage("src/book.jpg")
 text = love.graphics.newFont("src/JMH Typewriter-Bold.ttf",40)
 text2 = love.graphics.newFont("src/JMH Typewriter-Bold.ttf",25)
 text3 = love.graphics.newFont("src/JMH Typewriter-Bold.ttf",25)
 mmb = love.graphics.newImage("src/mmb.png")
 cl  = {0.8,0.8,0.8}

  cg = ButtonManager.new("Character generation", 300, 400, 200 , 50,10,cl)
 
  cg:setAlignment('center')
  cg:setFont("src/JMH Typewriter-Bold.otf")
  
   cg.onClick = function()
    changeScene("gc")
   end
end
function Scene:update(dt)
  
end
function Scene:draw()
  ButtonManager.draw()
  love.graphics.setBackgroundColor(1,1,1)
  love.graphics.setColor(1,1,1)
  love.graphics.draw(dice,0,450)
  love.graphics.draw(gem,700,10)
  love.graphics.draw(hat,500,410)
  love.graphics.draw(sword,0,50)
  love.graphics.draw(mmb,740,545)
  
  

  love.graphics.setColor(0,0,0)
  love.graphics.setFont(text)
  ButtonManager.draw()
  love.graphics.print("Smart character builder ",150,0)
  love.graphics.setFont(text3)
  love.graphics.print("It is a programme designed",200,150)
  love.graphics.print("to generate characters ",200,200)
  love.graphics.print(" for board games in the TTRPGs genre. ",188,250)
  love.graphics.print("It's made specifically for Tabletop Game Tool Jam",80,320)
 
  
  love.graphics.print("Author: Mann mit Brille ",400,555)
end
function Scene:mousepressed( x, y, msbutton, istouch, presses )
   ButtonManager.mousepressed(x,y,msbutton)
end
function Scene:mousereleased( x, y, msbutton, istouch, presses )
   ButtonManager.mousereleased(x,y,msbutton)
end
return Scene