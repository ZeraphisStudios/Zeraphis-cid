RegisterCommand('cid', function()
    local playerData = exports.qbx_core:GetPlayerData()

    if not playerData or not playerData.citizenid then
        lib.notify({
            title = 'Citizen ID',
            description = 'Citizen ID not found.',
            type = 'error',
            duration = 10000 -- 10 seconds
        })
        return
    end

    lib.notify({
        title = 'Citizen ID',
        description = ('Your Citizen ID: %s'):format(playerData.citizenid),
        type = 'success',
        duration = 10000 -- 10 seconds
    })
end, false)
