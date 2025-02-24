---
icon: stack-exchange
---

# Events and Exports

## Start Cutscene

This client sided export and event are used as a trigger to start the cutscene, i.e., the main trigger

{% tabs %}
{% tab title="Export (Client)" %}
```lua
exports["eh_cutscene"]:start()
```
{% endtab %}

{% tab title="Event (Client)" %}
```lua
TriggerEvent("eh_cutscene:client:StartCutscene")
```
{% endtab %}
{% endtabs %}

## Is Taxi Cutscene

This client-side export is used to identify whether the vehicle entity ID provided is a cutscene's spawned taxi or a random NPC vehicle. It helps tackle issues where vehicle key scripts forcefully lock taxi doors when a player attempts to enter the taxi.  [Click here](configuration/vehicle-keys.md) to view the usage of the export.

{% tabs %}
{% tab title="Export (Client)" %}
```lua
exports["eh_cutscene"]:isVehicleTaxi(vehicle_entity_id)
```
{% endtab %}
{% endtabs %}

