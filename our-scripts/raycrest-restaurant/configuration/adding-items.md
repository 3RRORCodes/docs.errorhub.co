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
-- Raycrest Ingredients
["ray_rice"] = { label = "Rice", weight = 300, stack = true, description = "Fresh rice for cooking", client = { image = "ray_rice.png" } },
["ray_onion"] = { label = "Onion", weight = 150, stack = true, description = "Fresh onion for cooking", client = { image = "ray_onion.png" } },
["ray_tomato"] = { label = "Tomato", weight = 120, stack = true, description = "Fresh tomato for cooking", client = { image = "ray_tomato.png" } },
["ray_carrot"] = { label = "Carrot", weight = 100, stack = true, description = "Fresh carrot for cooking", client = { image = "ray_carrot.png" } },
["ray_curry_paste"] = { label = "Curry Paste", weight = 200, stack = true, description = "Spicy curry paste", client = { image = "ray_curry_paste.png" } },
["ray_chicken"] = { label = "Chicken", weight = 400, stack = true, description = "Fresh chicken meat", client = { image = "ray_chicken.png" } },
["ray_dough"] = { label = "Dough", weight = 250, stack = true, description = "Fresh dough for making dumplings", client = { image = "ray_dough.png" } },
["ray_nori"] = { label = "Nori Sheet", weight = 50, stack = true, description = "Seaweed sheet for sushi", client = { image = "ray_nori.png" } },
["ray_fish"] = { label = "Fresh Fish", weight = 500, stack = true, description = "Fresh fish for cooking", client = { image = "ray_fish.png" } },
["ray_cucumber"] = { label = "Cucumber", weight = 180, stack = true, description = "Fresh cucumber", client = { image = "ray_cucumber.png" } },
["ray_egg"] = { label = "Egg", weight = 100, stack = true, description = "Fresh egg", client = { image = "ray_egg.png" } },
["ray_soy_sauce"] = { label = "Soy Sauce", weight = 200, stack = true, description = "Soy sauce for seasoning", client = { image = "ray_soy_sauce.png" } },
["ray_garlic"] = { label = "Garlic", weight = 80, stack = true, description = "Fresh garlic cloves", client = { image = "ray_garlic.png" } },
["ray_crab"] = { label = "Crab", weight = 600, stack = true, description = "Fresh crab", client = { image = "ray_crab.png" } },
["ray_octopus"] = { label = "Octopus", weight = 550, stack = true, description = "Fresh octopus", client = { image = "ray_octopus.png" } },
["ray_shrimp"] = { label = "Shrimp", weight = 300, stack = true, description = "Fresh shrimp", client = { image = "ray_shrimp.png" } },
["ray_apple"] = { label = "Apple", weight = 150, stack = true, description = "Fresh apple", client = { image = "ray_apple.png" } },
["ray_flour"] = { label = "Flour", weight = 400, stack = true, description = "All-purpose flour", client = { image = "ray_flour.png" } },
["ray_butter"] = { label = "Butter", weight = 250, stack = true, description = "Fresh butter", client = { image = "ray_butter.png" } },
["ray_sugar"] = { label = "Sugar", weight = 300, stack = true, description = "Granulated sugar", client = { image = "ray_sugar.png" } },
["ray_cinnamon"] = { label = "Cinnamon", weight = 100, stack = true, description = "Ground cinnamon spice", client = { image = "ray_cinnamon.png" } },
["ray_banana"] = { label = "Banana", weight = 120, stack = true, description = "Fresh banana", client = { image = "ray_banana.png" } },
["ray_ice_cream"] = { label = "Ice Cream", weight = 200, stack = true, description = "Creamy ice cream", client = { image = "ray_ice_cream.png" } },
["ray_chocolate"] = { label = "Chocolate", weight = 150, stack = true, description = "Dark chocolate", client = { image = "ray_chocolate.png" } },
["ray_whipped_cream"] = { label = "Whipped Cream", weight = 180, stack = true, description = "Fresh whipped cream", client = { image = "ray_whipped_cream.png" } },
["ray_cherry"] = { label = "Cherry", weight = 50, stack = true, description = "Fresh cherry", client = { image = "ray_cherry.png" } },
["ray_coffee_bean"] = { label = "Coffee Bean", weight = 200, stack = true, description = "Roasted coffee beans", client = { image = "ray_coffee_bean.png" } },
["ray_milk"] = { label = "Milk", weight = 300, stack = true, description = "Fresh milk", client = { image = "ray_milk.png" } },
["ray_water"] = { label = "Water", weight = 500, stack = true, description = "Clean water for cooking and drinks", client = { image = "ray_water.png" } },
["ray_carbonation"] = { label = "Carbonation", weight = 100, stack = true, description = "Carbonation for drinks", client = { image = "ray_carbonation.png" } },
["ray_syrup"] = { label = "Flavor Syrup", weight = 200, stack = true, description = "Flavor syrup for drinks", client = { image = "ray_syrup.png" } },
-- Raycrest Dishes
["ray_dumplings"] = { label = "Dumplings", weight = 280, stack = true, description = "Steamed dumplings filled with savory meat", client = { image = "ray_dumplings.png" } },
["ray_sushirolls"] = { label = "Sushi Rolls", weight = 250, stack = true, description = "Fresh sushi rolls", client = { image = "ray_sushirolls.png" } },
["ray_friedrice"] = { label = "Fried Rice", weight = 400, stack = true, description = "Delicious fried rice with vegetables", client = { image = "ray_friedrice.png" } },
["ray_crabdish"] = { label = "Crab Dish", weight = 500, stack = true, description = "Fresh crab prepared to perfection", client = { image = "ray_crabdish.png" } },
["ray_friedfish"] = { label = "Fried Fish", weight = 420, stack = true, description = "Crispy fried fish", client = { image = "ray_friedfish.png" } },
["ray_octopusdish"] = { label = "Octopus Dish", weight = 480, stack = true, description = "Tender octopus dish", client = { image = "ray_octopusdish.png" } },
["ray_shrimpdish"] = { label = "Shrimp Dish", weight = 380, stack = true, description = "Fresh shrimp dish", client = { image = "ray_shrimpdish.png" } },
["ray_applepotpie"] = { label = "Apple Pot Pie", weight = 300, stack = true, description = "Warm apple pot pie with cinnamon", client = { image = "ray_applepotpie.png" } },
["ray_bananasplit"] = { label = "Banana Split", weight = 280, stack = true, description = "Classic banana split with ice cream", client = { image = "ray_bananasplit.png" } },
["ray_lavacake"] = { label = "Lava Cake", weight = 250, stack = true, description = "Warm chocolate lava cake", client = { image = "ray_lavacake.png" } },
["ray_hotdrink"] = { label = "Hot Drink", weight = 220, stack = true, description = "Warm and comforting hot drink", client = { image = "ray_hotdrink.png" } },
["ray_colddrink"] = { label = "Cold Drink", weight = 200, stack = true, description = "Refreshing cold drink", client = { image = "ray_colddrink.png" } }
```
{% endtab %}
{% endtabs %}
