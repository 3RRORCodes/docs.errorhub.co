# Installation

## How to install the resource?

1. Go to your [FiveM Keymaster](https://keymaster.fivem.net) and download the script as a zip file.
2. Extract the downloaded zip file to a folder on your computer.
3. Find your server's resources folder.
4. Drag and drop the extracted folder into the resources folder.
5. Rename the folder to **eh\_weaponSerialTracker**.
6. Simply execute the **eh\_weaponSerialTracker.sql** script on your chosen server.

{% tabs %}
{% tab title="eh_weaponSerialTracker.sql" %}
```sql
ALTER TABLE `gloveboxitems`
ADD COLUMN `type` VARCHAR(50) NOT NULL DEFAULT 'glovebox' AFTER `items`;
```
{% endtab %}
{% endtabs %}

{% hint style="danger" %}
Please note that the script will not provide who has done the duplication or any player name. Instead, it provides essential information to identify the issue. When duplicates are found, it shows the Citizen ID for items in the inventory, the Stash ID for stash items, and the vehicle's license plate for trunk and glove box items.
{% endhint %}
