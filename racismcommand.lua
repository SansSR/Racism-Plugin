---@type Plugin
local plugin = ...
plugin.name = 'Racism'
plugin.author = 'Sans'
plugin.description = 'Act of Racism'


plugin.commands["/racism"] = {
    info = "Checks Your Skin Color",
    canCall = function(ply) return ply end,
    call = function(ply, man, args)
        assert(man, "Not spawned in.")

    local person = ply
    local skinColors = {
    [0] = 'white',
    [1] = 'black',
    [2] = 'white',
    [3] = 'black',
    [4] = 'white',
    [5] = 'black',
    }
        if ply.human.skinColor % 2 == 0 then
       person:sendMessage("Have a Lovely Day!")
                else
       person:sendMessage("Check Your Smoke Detector...")
    end
      end
  }
