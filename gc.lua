math.randomseed(os.time())
local Scene = {}
local ButtonManager = require('src/sbm/simplebutton')
function Scene:load()
  text2 = love.graphics.newFont("src/JMH Typewriter-Bold.ttf",25)
  text = love.graphics.newFont("src/JMH Typewriter-Bold.ttf",35)
  hat = love.graphics.newImage
  
  coins = love.graphics.newImage("src/coins.jpg")
  sword = love.graphics.newImage("src/sword.jpg")
  hat = love.graphics.newImage("src/hat.jpg")
  book = love.graphics.newImage("src/book.jpg")
  
  Race = {
    "Angel",
    "Centaur",
    "Giant",
    "Goblin",
    "Golem",
    "Minotaur",
    "Ogre",
    "Orc",
    "Pixie",
    "Troll",
    "Dwarf",
    "Human",
    "Elf"
    
  }
  RandomRace = math.random(1,13)
  
  Gender = {"Woman","Man","No definitions "}
  RandomGender = math.random(1,3)
  
  Randomlevel = math.random(1,100)
  
  HP = math.random(1,1000)
  Age = math.random(10,150)
  
  Class = {
    "Soldier",
    "Knight",
    "Barbarian",
    "Paladin",
    "Black Mage", --5
    "White Mage", --6
    "Red Mage", --7
    "Rogue",
    "Archer",
    "Engineer",
    "Monk",
    "Summoner",
    "Beastmaster",
    "Joke",
    "Assassin",
    "Black Knight",
    "Shaman",
    "Druid",
    "Mystic Knight",
    "Warden",
    "Hunter",
    "Thief",
    "Witch",
    "Mage" --24
    
  }
  
  Randomclass = math.random(1,24)
  
  Randomweight = math.random(1,500)
  
  Randommagicforce = math.random(0,1)
  
 if Randomclass == 5 or Randomclass == 6 or Randomclass == 7 or Randomclass == 24  then
  Randommagicforce = math.random(4,10) 
  end
  
  Randomphysicalstrength = math.random(0,10)
  Randomdexterity = math.random(0,10)
  Randomdamage = math.random(0,10)
 end
function Scene:update(dt)
end
function Scene:draw()
  love.graphics.setColor(0,0,0)
  love.graphics.setFont(text)
  love.graphics.print("The character was generated !",130,0)
  love.graphics.setFont(text2)
  love.graphics.print("Race:"..Race[RandomRace],0,50)
  love.graphics.print("Age:"..Age,0,100)
  love.graphics.print("Gender:"..Gender[RandomGender],0,150)
  love.graphics.print("Level:"..Randomlevel,0,200)
  love.graphics.print("Health:"..HP,0,250)
  love.graphics.print("Class:"..Class[Randomclass],0,300)
  love.graphics.print("Weight:"..Randomweight,0,350)
  love.graphics.print("Magic force:"..Randommagicforce.."/10",0,400)
  love.graphics.print("Physical strength:"..Randomphysicalstrength.."/10",0,450)
  love.graphics.print("Dexterity:"..Randomdexterity.."/10",0,500)
  love.graphics.print("Damage"..Randomdamage.."/10",0,550)
  
  love.graphics.setColor(1,1,1)
  love.graphics.draw(coins,730,550)
  love.graphics.draw(sword,600,300)
  love.graphics.draw(hat,370,460)
  love.graphics.draw(book,360,300)
  
end
return Scene