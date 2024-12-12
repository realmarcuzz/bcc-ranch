---@param ranchid integer
RegisterServerEvent('bcc-ranch:OpenInv', function(ranchid)
    local _source = source
    exports['rsg-inventory']:OpenInventory(_source, 'Player_' .. ranchid .. '_bcc-ranchinv', data)
end)

BccUtils.RPC:Register("bcc-ranch:AddItem", function(params, cb, recSource)
    local item = params.item
    local amount = params.amount

    devPrint("Adding item: " .. item .. " with amount: " .. amount .. " for source: " .. recSource)
    exports['rsg-inventory']:AddItem(recSource, item, amount, false, nil, "bcc-ranch:AddItem")
    TriggerClientEvent('rsg-inventory:client:ItemBox', recSource, RSGCore.Shared.Items[item], 'add', amount)

    cb(true)
end)
