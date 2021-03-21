github_repo = "kazu55/MinuxGUI/master"
term.clear()
print("Updateing...")
shell.run("rm startup.lua")
shell.run("rm Login.lua")
shell.run("rm Desktop.lua")
shell.run("rm FileManager.lua")
shell.run("rm MinuxNews.lua")

local install_files = textutils.unserialize(http.get("https://raw.githubusercontent.com/"..github_repo.."/install_files.textutils").readAll())
for topath, url in pairs(install_files) do
  clearTermWName(colors.white, colors.green)
  local downloader = http.get(url)
  local download = downloader.readAll()
  downloader.close()
  fs.makeDir(install_to.."/"..topath)
  fs.delete(install_to.."/"..topath)
  if fs.exists(install_to.."/"..topath) then
    fs.delete(install_to.."/"..topath)
  end
    local file = fs.open(install_to.."/"..topath, "w")
  file.write(download)
  file.close()
end
resetTerm()
