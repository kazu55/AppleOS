local function centerTextXY(text)
  local w, h = term.getSize()
  term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
  io.write(text)
end

os.loadAPI("diaAPI.lua")
Variable = diaAPI.yesorno(4,4,"Shutting Down","AppleOS")
if Variable == true then
  term.setBackgroundColor(colors.black)
  term.clear()
  term.setCursorPos(1,1)
  centerTextXY("Shutting Down")
  sleep(1)
  os.shutdown()
end
