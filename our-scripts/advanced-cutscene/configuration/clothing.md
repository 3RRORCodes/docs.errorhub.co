# Clothing

To get the cutscene script working, you'll need to configure it with your clothing script. Below are the default setups for supported clothing scripts.

### **Supported clothing scripts:**

* [qb-clothing](clothing.md#qb-clothing)
* [illenium-appearance](clothing.md#illenium-appearance)
* [bl\_appearance](clothing.md#bl\_appearance)
* [codem-appearance](clothing.md#codem-appearance)
* [ak47\_qb\_clothing](clothing.md#ak47\_clothing)
* [fivem-appearance](clothing.md#fivem-appearance)
* [pure-clothing](clothing.md#pure-clothing)

{% hint style="info" %}
If your clothing script isn’t listed, join our [Discord](https://discord.errorhub.co) and open a support ticket to check if your script is compatible with the cutscene resource.
{% endhint %}

{% tabs %}
{% tab title="qb-clothing" %}
1. Open the <mark style="color:yellow;">`main.lua`</mark> file in the <mark style="color:yellow;">`qb-clothing/client`</mark> folder.
2. Insert the following code above or below the line <mark style="color:yellow;">`local creatingCharacter = false`</mark> (around line 3):

```lua
local CreateFirstCharacter = false
```

3. Replace the event <mark style="color:yellow;">`RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')`</mark> with the code below:

```lua
RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')
AddEventHandler('qb-clothes:client:CreateFirstCharacter', function()
    CreateFirstCharacter = true
    QBCore.Functions.GetPlayerData(function(pData)
        local skin = "mp_m_freemode_01"
        openMenu({
            {menu = "character", label = "Character", selected = true},
            {menu = "clothing", label = "Features", selected = false},
            {menu = "accessoires", label = "Accessories", selected = false}
        })

        if pData.charinfo.gender == 1 then
            skin = "mp_f_freemode_01"
        end

        ChangeToSkinNoUpdate(skin)
        SendNUIMessage({
            action = "ResetValues",
        })
    end)
end)
```

4. Replace <mark style="color:yellow;">`RegisterNUICallback('close', function(_, cb)`</mark> with the following code:

```lua
RegisterNUICallback('close', function(_, cb)
    SetNuiFocus(false, false)
    if CreateFirstCharacter then 
        TriggerEvent("eh_cutscene:client:StartCutscene") -->> Start eh_cutscene
        print('^2Started eh_cutscene')
    end
    CreateFirstCharacter = false
    creatingCharacter = false
    disableCam()
    FreezeEntityPosition(PlayerPedId(), false)
end)
```
{% endtab %}

{% tab title="illenium-appearance" %}
1. Open the <mark style="color:yellow;">`client.lua`</mark> file in the <mark style="color:yellow;">`illenium-appearance/client`</mark> folder.
2. Replace the function <mark style="color:yellow;">`InitializeCharacter(gender, onSubmit, onCancel)`</mark> with the code below:

```lua
function InitializeCharacter(gender, onSubmit, onCancel)
    SetInitialClothes(Config.InitialPlayerClothes[gender])
    local config = getNewCharacterConfig()
    TriggerServerEvent("illenium-appearance:server:ChangeRoutingBucket")
    client.startPlayerCustomization(function(appearance)
        if (appearance) then
            TriggerEvent("eh_cutscene:client:StartCutscene") -->> Start eh_cutscene
            print('^2Started eh_cutscene')
            TriggerServerEvent("illenium-appearance:server:saveAppearance", appearance)
            if onSubmit then
                onSubmit()
            end
        elseif onCancel then
            onCancel()
        end
        Framework.CachePed()
        TriggerServerEvent("illenium-appearance:server:ResetRoutingBucket")
    end, config)
end
```
{% endtab %}

{% tab title="bl_appearance" %}
1. Open the <mark style="color:yellow;">`init.js`</mark> file in the <mark style="color:yellow;">`bl_appearance/dist/client`</mark> folder.
2. Replace the <mark style="color:yellow;">`closeMenu()`</mark> function with the code below:

```javascript
function closeMenu() {
  SetPedArmour(ped, armour);
  stopCamera();
  SetNuiFocus(false, false);
  sendNUIEvent("appearance:visible", false);
  exports.bl_appearance.hideHud(false);
  if (resolvePromise) {
    resolvePromise();
  }
  open = false;
  
  if (isNewCharacter) {
    emit('eh_cutscene:client:StartCutscene');
    isNewCharacter = false;
  }
}
```

3. Replace <mark style="color:yellow;">`exports("InitialCreation", async (cb)`</mark> with the code below:

```javascript
let isNewCharacter = false;

exports("InitialCreation", async (cb) => {
  isNewCharacter = true;
  await openMenu({ type: "appearance", coords: [0, 0, 0, 0] }, true);
  if (cb) {
    cb();
  }
});
```
{% endtab %}

{% tab title="codem-appearance" %}
1. Open the <mark style="color:yellow;">`config.lua`</mark> file in the <mark style="color:yellow;">`codem-appearance/shared`</mark> folder.&#x20;
2. Replace the line <mark style="color:yellow;">`Config.OnMenuClose = function()`</mark> with the code below:

```lua
Config.OnMenuClose = function()
    TriggerEvent("mHud:ShowHud")

    if firstCharacter then 
        TriggerEvent("eh_cutscene:client:StartCutscene") -->> Start eh_cutscene
        print('^2Started eh_cutscene')
    end

    if firstCharacter then firstCharacter = false end
end
```

3. Open the <mark style="color:yellow;">`editable.lua`</mark> file in the <mark style="color:yellow;">`codem-appearance/client`</mark> folder.
4.  Replace the event <mark style="color:yellow;">`RegisterNetEvent("qb-clothes:client:CreateFirstCharacter")`</mark> with the code below:

    ```lua
    firstCharacter = false

    RegisterNetEvent("qb-clothes:client:CreateFirstCharacter")
    AddEventHandler("qb-clothes:client:CreateFirstCharacter", function()
        firstCharacter = true
        OpenMenu("charcreator")
    end)
    ```
{% endtab %}

{% tab title="fivem-appearance" %}
1. Replace the event <mark style="color:yellow;">`RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')`</mark> with the code below:

```lua
RegisterNetEvent('qb-clothes:client:CreateFirstCharacter', function()
    QBCore.Functions.GetPlayerData(function(pd)
    local gender = "Male"
    local skin = 'mp_m_freemode_01'
    if pd.charinfo.gender == 1 then
        skin = "mp_f_freemode_01"
        gender = "Female"
    end
    exports[resourceName]:setPlayerModel(skin)
    -- Fix for tattoo's appearing when creating a new character
    local ped = PlayerPedId()
    -- exports[resourceName]:setPedTattoos(ped, {})
    exports[resourceName]:setPedComponents(ped, Config.InitialPlayerClothes[gender].Components)
    exports[resourceName]:setPedProps(ped, Config.InitialPlayerClothes[gender].Props)
    exports[resourceName]:setPedHair(ped, Config.InitialPlayerClothes[gender].Hair)
    ClearPedDecorations(ped)
    local config = getNewCharacterConfig()
    exports[resourceName]:startPlayerCustomization(function(appearance)
        if (appearance) then
            TriggerServerEvent('fivem-appearance:server:saveAppearance', appearance)
            TriggerEvent("eh_cutscene:client:StartCutscene") -->> Start eh_cutscene
            print('^2Started eh_cutscene')
            end
        end, config)
    end, Config.PedMenuGroup)
end)
```
{% endtab %}

{% tab title="pure-clothing" %}
1. Open the <mark style="color:yellow;">`cl_save_functions.lua`</mark> file in the <mark style="color:yellow;">`pure-clothing/client/functions`</mark> folder.
2. Insert the following code above the line containing <mark style="color:yellow;">`charactersFirstCharacter = false`</mark>:

```lua
if charactersFirstCharacter then 
    TriggerEvent("eh_cutscene:client:StartCutscene")
end
```
{% endtab %}

{% tab title="ak47_clothing" %}
1. Open the <mark style="color:yellow;">`utils.lua`</mark> file in the <mark style="color:yellow;">`ak47_qb_clothing/client`</mark> folder.
2.  Replace the function <mark style="color:yellow;">`playCutScene()`</mark> with the code below:

    ```lua
    function playCutScene()
        if not cutScenePlayed then
            cutScenePlayed = true
            TriggerEvent("eh_cutscene:client:StartCutscene") -->> Start eh_cutscene
            print('^2Started eh_cutscene')
        end
    end
    ```

{% hint style="info" %}
The cutscene is only compatible with the latest version of MenanaAk47's QB Clothing.
{% endhint %}
{% endtab %}
{% endtabs %}

