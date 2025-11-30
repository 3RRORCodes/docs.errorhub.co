---
description: >-
  This page contains the item list you need to add to your server. Copy the
  items from the tab that matches your framework and paste them into the correct
  location.
---

# Adding Items

{% tabs %}
{% tab title="qb-inventory" %}
Add the following items to your <mark style="color:yellow;">`qb-core/shared/items.lua`</mark> file:

```lua
-- Raycrest Ingredients
ray_rice          = { name = 'ray_rice',          label = 'Rice',          weight = 300, type = 'item', image = 'ray_rice.png',          unique = false, useable = false, shouldClose = true, description = 'Fresh rice for cooking' },
ray_onion         = { name = 'ray_onion',         label = 'Onion',         weight = 150, type = 'item', image = 'ray_onion.png',         unique = false, useable = false, shouldClose = true, description = 'Fresh onion for cooking' },
ray_tomato        = { name = 'ray_tomato',        label = 'Tomato',        weight = 120, type = 'item', image = 'ray_tomato.png',        unique = false, useable = false, shouldClose = true, description = 'Fresh tomato for cooking' },
ray_carrot        = { name = 'ray_carrot',        label = 'Carrot',        weight = 100, type = 'item', image = 'ray_carrot.png',        unique = false, useable = false, shouldClose = true, description = 'Fresh carrot for cooking' },
ray_curry_paste   = { name = 'ray_curry_paste',   label = 'Curry Paste',   weight = 200, type = 'item', image = 'ray_curry_paste.png',   unique = false, useable = false, shouldClose = true, description = 'Spicy curry paste' },
ray_chicken       = { name = 'ray_chicken',       label = 'Chicken',       weight = 400, type = 'item', image = 'ray_chicken.png',       unique = false, useable = false, shouldClose = true, description = 'Fresh chicken meat' },
ray_dough         = { name = 'ray_dough',         label = 'Dough',         weight = 250, type = 'item', image = 'ray_dough.png',         unique = false, useable = false, shouldClose = true, description = 'Fresh dough for making dumplings' },
ray_nori          = { name = 'ray_nori',          label = 'Nori Sheet',    weight = 50,  type = 'item', image = 'ray_nori.png',          unique = false, useable = false, shouldClose = true, description = 'Seaweed sheet for sushi' },
ray_fish          = { name = 'ray_fish',          label = 'Fresh Fish',    weight = 500, type = 'item', image = 'ray_fish.png',          unique = false, useable = false, shouldClose = true, description = 'Fresh fish for cooking' },
ray_cucumber      = { name = 'ray_cucumber',      label = 'Cucumber',      weight = 180, type = 'item', image = 'ray_cucumber.png',      unique = false, useable = false, shouldClose = true, description = 'Fresh cucumber' },
ray_egg           = { name = 'ray_egg',           label = 'Egg',           weight = 100, type = 'item', image = 'ray_egg.png',           unique = false, useable = false, shouldClose = true, description = 'Fresh egg' },
ray_soy_sauce     = { name = 'ray_soy_sauce',     label = 'Soy Sauce',     weight = 200, type = 'item', image = 'ray_soy_sauce.png',     unique = false, useable = false, shouldClose = true, description = 'Soy sauce for seasoning' },
ray_garlic        = { name = 'ray_garlic',        label = 'Garlic',        weight = 80,  type = 'item', image = 'ray_garlic.png',        unique = false, useable = false, shouldClose = true, description = 'Fresh garlic cloves' },
ray_crab          = { name = 'ray_crab',          label = 'Crab',          weight = 600, type = 'item', image = 'ray_crab.png',          unique = false, useable = false, shouldClose = true, description = 'Fresh crab' },
ray_octopus       = { name = 'ray_octopus',       label = 'Octopus',       weight = 550, type = 'item', image = 'ray_octopus.png',       unique = false, useable = false, shouldClose = true, description = 'Fresh octopus' },
ray_shrimp        = { name = 'ray_shrimp',        label = 'Shrimp',        weight = 300, type = 'item', image = 'ray_shrimp.png',        unique = false, useable = false, shouldClose = true, description = 'Fresh shrimp' },
ray_apple         = { name = 'ray_apple',         label = 'Apple',         weight = 150, type = 'item', image = 'ray_apple.png',         unique = false, useable = false, shouldClose = true, description = 'Fresh apple' },
ray_flour         = { name = 'ray_flour',         label = 'Flour',         weight = 400, type = 'item', image = 'ray_flour.png',         unique = false, useable = false, shouldClose = true, description = 'All-purpose flour' },
ray_butter        = { name = 'ray_butter',        label = 'Butter',        weight = 250, type = 'item', image = 'ray_butter.png',        unique = false, useable = false, shouldClose = true, description = 'Fresh butter' },
ray_sugar         = { name = 'ray_sugar',         label = 'Sugar',         weight = 300, type = 'item', image = 'ray_sugar.png',         unique = false, useable = false, shouldClose = true, description = 'Granulated sugar' },
ray_cinnamon      = { name = 'ray_cinnamon',      label = 'Cinnamon',      weight = 100, type = 'item', image = 'ray_cinnamon.png',      unique = false, useable = false, shouldClose = true, description = 'Ground cinnamon spice' },
ray_banana        = { name = 'ray_banana',        label = 'Banana',        weight = 120, type = 'item', image = 'ray_banana.png',        unique = false, useable = false, shouldClose = true, description = 'Fresh banana' },
ray_ice_cream     = { name = 'ray_ice_cream',     label = 'Ice Cream',     weight = 200, type = 'item', image = 'ray_ice_cream.png',     unique = false, useable = false, shouldClose = true, description = 'Creamy ice cream' },
ray_chocolate     = { name = 'ray_chocolate',     label = 'Chocolate',    weight = 150, type = 'item', image = 'ray_chocolate.png',     unique = false, useable = false, shouldClose = true, description = 'Dark chocolate' },
ray_whipped_cream = { name = 'ray_whipped_cream', label = 'Whipped Cream', weight = 180, type = 'item', image = 'ray_whipped_cream.png', unique = false, useable = false, shouldClose = true, description = 'Fresh whipped cream' },
ray_cherry        = { name = 'ray_cherry',        label = 'Cherry',        weight = 50,  type = 'item', image = 'ray_cherry.png',        unique = false, useable = false, shouldClose = true, description = 'Fresh cherry' },
ray_coffee_bean   = { name = 'ray_coffee_bean',   label = 'Coffee Bean',   weight = 200, type = 'item', image = 'ray_coffee_bean.png',   unique = false, useable = false, shouldClose = true, description = 'Roasted coffee beans' },
ray_milk          = { name = 'ray_milk',          label = 'Milk',          weight = 300, type = 'item', image = 'ray_milk.png',          unique = false, useable = false, shouldClose = true, description = 'Fresh milk' },
ray_water         = { name = 'ray_water',         label = 'Water',         weight = 500, type = 'item', image = 'ray_water.png',          unique = false, useable = false, shouldClose = true, description = 'Clean water for cooking and drinks' },
ray_carbonation   = { name = 'ray_carbonation',   label = 'Carbonation',   weight = 100, type = 'item', image = 'ray_carbonation.png',   unique = false, useable = false, shouldClose = true, description = 'Carbonation for drinks' },
ray_syrup         = { name = 'ray_syrup',         label = 'Flavor Syrup',  weight = 200, type = 'item', image = 'ray_syrup.png',         unique = false, useable = false, shouldClose = true, description = 'Flavor syrup for drinks' },
-- Raycrest Dishes
ray_dumplings            = { name = 'ray_dumplings',            label = 'Dumplings',             weight = 280, type = 'item', image = 'ray_dumplings.png',            unique = false, useable = true, shouldClose = true, description = 'Steamed dumplings filled with savory meat' },
ray_sushirolls      = { name = 'ray_sushirolls',      label = 'Sushi Rolls',      weight = 250, type = 'item', image = 'ray_sushirolls.png',      unique = false, useable = true, shouldClose = true, description = 'Fresh sushi rolls' },
ray_friedrice       = { name = 'ray_friedrice',       label = 'Fried Rice',       weight = 400, type = 'item', image = 'ray_friedrice.png',       unique = false, useable = true, shouldClose = true, description = 'Delicious fried rice with vegetables' },
ray_crabdish   = { name = 'ray_crabdish',   label = 'Crab Dish',       weight = 500, type = 'item', image = 'ray_crabdish.png',   unique = false, useable = true, shouldClose = true, description = 'Fresh crab prepared to perfection' },
ray_friedfish  = { name = 'ray_friedfish',  label = 'Fried Fish',      weight = 420, type = 'item', image = 'ray_friedfish.png',  unique = false, useable = true, shouldClose = true, description = 'Crispy fried fish' },
ray_octopusdish = { name = 'ray_octopusdish', label = 'Octopus Dish', weight = 480, type = 'item', image = 'ray_octopusdish.png', unique = false, useable = true, shouldClose = true, description = 'Tender octopus dish' },
ray_shrimpdish = { name = 'ray_shrimpdish', label = 'Shrimp Dish',     weight = 380, type = 'item', image = 'ray_shrimpdish.png', unique = false, useable = true, shouldClose = true, description = 'Fresh shrimp dish' },
ray_applepotpie     = { name = 'ray_applepotpie',     label = 'Apple Pot Pie',    weight = 300, type = 'item', image = 'ray_applepotpie.png',     unique = false, useable = true, shouldClose = true, description = 'Warm apple pot pie with cinnamon' },
ray_bananasplit     = { name = 'ray_bananasplit',     label = 'Banana Split',     weight = 280, type = 'item', image = 'ray_bananasplit.png',     unique = false, useable = true, shouldClose = true, description = 'Classic banana split with ice cream' },
ray_lavacake        = { name = 'ray_lavacake',         label = 'Lava Cake',        weight = 250, type = 'item', image = 'ray_lavacake.png',         unique = false, useable = true, shouldClose = true, description = 'Warm chocolate lava cake' },
ray_hotdrink        = { name = 'ray_hotdrink',         label = 'Hot Drink',       weight = 220, type = 'item', image = 'ray_hotdrink.png',        unique = false, useable = true, shouldClose = true, description = 'Warm and comforting hot drink' },
ray_colddrink      = { name = 'ray_colddrink',       label = 'Cold Drink',      weight = 200, type = 'item', image = 'ray_colddrink.png',       unique = false, useable = true, shouldClose = true, description = 'Refreshing cold drink' },
```
{% endtab %}

{% tab title="ox_inventory" %}
Add the following items to your <mark style="color:yellow;">`ox_inventory/data/items.lua`</mark> file:

```lua
local function onVehicleAttemptToEnter(vehicle)
    if Entity(vehicle).state.doorslockstate then return end

    if exports["eh_cutscene"]:isVehicleTaxi(vehicle) then return end

    local ped = GetPedInVehicleSeat(vehicle, -1)
    if IsPedAPlayer(ped) then return end

    local isLocked = not GetVehicleConfig(vehicle).noLock and getIsVehicleInitiallyLocked(vehicle, ped and ped ~= 0)
    local lockState = isLocked and 2 or 1
    SetVehicleDoorsLocked(vehicle, lockState)
    TriggerServerEvent('qb-vehiclekeys:server:setVehLockState', NetworkGetNetworkIdFromEntity(vehicle), lockState)
end
```
{% endtab %}
{% endtabs %}
