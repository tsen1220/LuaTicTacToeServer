local nakama = require("nakama")

local M ={}

-----------------dispatcher.broadcast_message(  op_code ,   data    ,   presences   ,   sender  )
--[[
    |Param    |	Type	|                                                   Description                                                                                                     |
    |---------|---------|----------------------------------------------------------------------------------------------------------------|
    |op_code  |	number	|Numeric message op code.                                                                                        |
    |data     |	string	|Data payload string, or nil.                                                                                    |
    |presences|	table	|List of presences (a subset of match participants) to use as message targets, or nil to send to the whole match.|
    |sender   |	table	|A presence to tag on the message as the 'sender', or nil.                                                       |
]]



function M.dispatchGameMessage ( dispatcher, opCode , data , presences ,sender )
    dispatcher.broadcast_message(opCode,encodeData,presences,sender)
end



return M