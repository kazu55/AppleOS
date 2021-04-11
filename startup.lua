os.pullEvent=os.pullEventRaw

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
centerText("AppleOS")
sleep(2)
term.clear()

shell.run("1")

term.setBackgroundColor(colors.blue)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.cyan)
term.clear()
sleep(0.3)
term.setBackgroundColor(colors.black)
term.clear()
sleep(0.5)
shell.run("Login")
