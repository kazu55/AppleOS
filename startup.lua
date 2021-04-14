os.pullEvent=os.pullEventRaw
local sizex, sizey = term.getSize()

local function centerTextXY(text)
  local w, h = term.getSize()
  term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
  io.write(text)
end
local function centerText(text)
  local x,y = term.getSize()
  local x2,y2 = term.getCursorPos()
  term.setCursorPos(math.ceil((x / 2) - (text:len() / 2)), y2)
  write(text)
end

term.setBackgroundColor(colors.cyan)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.blue)
term.clear()



term.clear()
term.setTextColor(colors.red)
centerTextXY("AppleOS")
sleep(2)
term.clear()
centerTextXY("Loading...")
sleep(2)
if fs.exists("Desktop.lua") == true then
  term.clear()
  centerTextXY("--")
end
sleep(0.2)

if fs.exists("1.lua") == true then
  term.clear()
  centerTextXY("--")
  write("--")
end
sleep(0.2)

if fs.exists("FileManager.lua") == true then
  term.clear()
  centerTextXY("--")
  write("----")
end
sleep(0.6)

if fs.exists("shutdown1.lua") == true then
  term.clear()
  centerTextXY("--")
  write("------")
end
sleep(0.27)

if fs.exists("shutdown2.lua") == true then
  term.clear()
  centerTextXY("--")
  write("--------")
end
sleep(0.23)

term.setTextColor(colors.white)



term.setBackgroundColor(colors.blue)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.cyan)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.black)
term.clear()
sleep(0.5)
shell.run("1")
sleep(2)
shell.run("Login")
