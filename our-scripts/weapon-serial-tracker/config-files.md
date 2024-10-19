# Config Files

{% tabs %}
{% tab title="config.lua" %}
```lua
-- QBCore Framework Settings
Framework = {
    CoreName = "QBCore", -- The name of the core/framework you are using (e.g., "QBCore", "MyCore", etc.)
    Export = exports['qb-core']:GetCoreObject(), -- The export name for accessing the core object
}

-- Tracking Settings
Tracking = {
    Automatic = false, -- (Not Recommended | Still if you use it keep the interval time decent so that it dont get spammed)Set to true to enable automatic tracking for duplicate serial numbers
    IntervalTime = 360, -- (By default set as 6 hours)Time interval (in minutes) for checking duplicate serial numbers automatically
    EnableWebhook = true, -- Set to true to enable sending webhook to your Discord server
    EnableCommand = true, -- Set to true to enable the manual command for checking duplicate serial numbers
    Command = 'checkserial', -- Command to use for manual checks of duplicate serial numbers
    CommandPermission = 'god' -- QBCore permission required to access the manual check command
}
```
{% endtab %}

{% tab title="webhook.lua" %}
```lua
-- Webhook Settings
Webhook = {
    Hook = 'https://discord.com/api/webhooks/xxxxxxxxx', -- Webhook URL for sending hooks
    Username = 'EH-SERIAL TRACKER', -- Username displayed in webhook notifications
    AvatarUrl = 'https://cdn.discordapp.com/attachments/1090969734624858222/1133347980376813579/3RROR-HUB-BGV.png', -- Avatar URL for the webhook
}
```
{% endtab %}
{% endtabs %}
