---@type Plugin
local plugin = ...
plugin.name = 'Racism'
plugin.author = 'Sans'
plugin.description = 'Act of Racism'

plugin:addHook("PostHumanCreate", function(ply, man)
    local skinColors = {
    [0] = 'white',
    [1] = 'black',
    [2] = 'white',
    [3] = 'black',
    [4] = 'white',
    [5] = 'black',
    }
        for _, man in ipairs(humans.getAll()) do
      if man.skinColor % 2 == 0 and man.isAlive == true and man.data.player ~= true then
            man.player:sendMessage("Have a Lovely Day!")
        man.data.player = true
            elseif man.isAlive == true and man.data.player ~= true then
            man.player:sendMessage("Check Your Smoke Detector...")
        man.data.player = true
      end
    end
end)