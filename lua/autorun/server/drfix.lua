local function setGrav()
  local mode = GAMEMODE
  if mode ~= "Deathrun" then
    RunConsoleCommand("sv_gravity", "600")
  end
  if mode =="Deathrun" then
    RunConsoleCommand("deathrun_round_limit", "5")
    RunConsoleCommand("sv_gravity", "800")
  end
end

local function gameVote( rounds )
  if rounds >= 5 then
    MAPVOTE.setState("VoteGamemode")
    return true
  end
end
hook.Add("Initialize", "setGrav", setGrav)
hook.Add("DeathrunStartMapvote", "triggerKMapVote", gameVote)
