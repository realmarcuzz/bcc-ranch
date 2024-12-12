BccUtils = exports['bcc-utils'].initiate()
RSGCore = exports['rsg-core']:GetCoreObject()

lib.locale()
VORPcore = {}

function _U(string)
    return locale(string)
end

function VORPcore:NotifyRightTip(src, label, ms) 
    TriggerClientEvent('ox_lib:notify', src, { title = label, duration = ms })
end

if Config.devMode then
    -- Helper function for debugging
    function devPrint(message)
        print("^1[DEV MODE] ^4" .. message .. "^1")
    end
else
    -- Define devPrint as a no-op function if DevMode is not enabled
    function devPrint(message) end
end
