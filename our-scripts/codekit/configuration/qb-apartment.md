# QB-Apartment

If you're using `qb-apartment`, follow these steps. Otherwise, you can skip this setup:

1. Open the <mark style="color:yellow;">`main.lua`</mark> file in the <mark style="color:yellow;">`qb-apartments/client`</mark> folder.
2. Insert the following code at the bottom of the <mark style="color:yellow;">`main.lua`</mark> file:

```lua
-- EH-Cutscene
local function DisableInApartment(house)
    TriggerServerEvent("qb-apartments:returnBucket")
    exports['qb-interior']:DespawnInterior(HouseObj, function()
        TriggerEvent('qb-weathersync:client:EnableSync')
        TriggerServerEvent("apartments:server:RemoveObject", CurrentApartment, house)
        TriggerServerEvent('qb-apartments:server:SetInsideMeta', CurrentApartment, false)
        CurrentApartment = nil
        InApartment = false
        CurrentOffset = 0
        TriggerServerEvent("apartments:server:setCurrentApartment", nil)

        DeleteInApartmentTargets()
        DeleteApartmentsEntranceTargets()
    end)
end

RegisterNetEvent('eh_cutscene:client:DisableInsideAparts', function()
    if not InApartment then
        return
    end
    DisableInApartment(ClosestHouse)
    print('^2Disabled Inside Apartment')
end)
```
