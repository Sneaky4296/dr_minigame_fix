local function setGrav()
  local mode = GAMEMODE
  if mode ~= "Deathrun" then
    RunConsoleCommand("sv_gravity", "600")
  end
  if mode =="Deathrun" then
    RunConsoleCommand("deathrun_round_limit", "20")
    RunConsoleCommand("sv_gravity", "800")
  end
end
hook.Add("PostGamemodeLoaded", "setGrav", setGrav)
