local function setConvars()
  local mode = gmod.GetGamemode().Name
  if mode ~= "Deathrun" then
    RunConsoleCommand("sv_gravity", "600")
    RunConsoleCommand("sv_airaccelerate", "10")
  end
  if mode =="Deathrun" then
    RunConsoleCommand("sv_gravity", "800")
  end
end

hook.Add("Initialize", "setConvars", setConvars)
