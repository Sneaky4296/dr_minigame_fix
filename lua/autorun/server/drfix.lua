local function setGrav()
  local mode = GAMEMODE
  if mode == "deathrun" then
    RunConsoleCommand("sv_gravity", "600")
  end
end
hook.Add("PostGamemodeLoaded", "setGrav", setGrav)
