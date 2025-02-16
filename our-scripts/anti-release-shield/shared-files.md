---
icon: copy
---

# Shared Files

{% tabs %}
{% tab title="config.lua" %}
````lua
```lua
--------------------------------------------------------------------------------
--- Need help with Discord setup? 
--- What's confusing you? We've got a super friendly guide at:
--- https://docs.errorhub.co/error-hub/discord-guide
--------------------------------------------------------------------------------
ehConfig = {}

-- How should we handle whitelist checks?
ehConfig.whitelist = {
    -- What method should we use to check if players are allowed?
    -- Options: "discord" (Discord roles only), "identifiers" (game IDs only), or "both" (check both)
    method = "both",

    -- What Discord settings should we use?
    discord = {
        -- Which Discord server should we check?
        guildId = "YOUR_GUILD_ID_HERE",

        -- What's your bot's token?
        botToken = "YOUR_BOT_TOKEN_HERE",

        -- Which Discord roles are allowed to use release version?
        whitelistRoles = {
            "ROLE_ID_HERE" -- Want more roles? Just add them here!
        },
    },

    -- How should we handle game ID checks?
    identifiers = {
        -- How often should we save changes to the whitelist? (in minutes) (Recommended not to change this)
        saveInterval = 5,

        -- Which game IDs should we check?
        types = {
            license = true,    -- Should we check FiveM license both in license and license2?
            steam = true,      -- Should we check Steam ID?
            fivem = true      -- Should we check FiveM ID?
        },

        -- How should whitelist commands work?
        commands = {
            -- Who can use these commands?
            -- Which admin group can add/remove from whitelist?
            group = "group.admin",

            -- What should the commands be named?
            add = "release_add",     -- What is the command to add someone to the whitelist?
            remove = "release_remove" -- What is the command to remove someone from the whitelist?
        }
    }
}

-- How should Discord logging work?
ehConfig.logging = {
    -- Should we send logs to Discord?
    enabled = true,

    -- Where should we send the logs?
    url = "YOUR_WEBHOOK_URL_HERE",

    -- How should the webhook embed look?
    appearance = {
        name = "Anti-Release Shield",
        avatar = "https://i.postimg.cc/bvqFFQvP/error-Hub-logo.png"
    },

    -- How should we handle lots of logs? (Dont change this if you dont know what you are doing)
    rateLimit = {
        -- How many logs should we send at once?
        -- Higher = More logs but might hit Discord limits
        batchSize = 5,

        -- How long should we wait between sending logs? (in milliseconds)
        -- Higher = Slower but safer for Discord limits
        batchDelay = 2000
    },

    -- What events should we log to Discord?
    shouldLog = {
        -- Should we log security-related events?
        securityEvents = {
            injectionAttempt = true,  -- Should we log when someone tries to hack? (Highly Recommended: Yes)
            tokenMismatch = true,     -- Should we log invalid security checks? (Highly Recommended: Yes)
            bypassAttempt = true,     -- Should we log security bypasses? (Highly Recommended: Yes)
        },

        -- Should we log version-related events?
        versionEvents = {
            invalidVersion = true,    -- Should we log bad version data? (Recommended: Yes)
            parseError = true,        -- Should we log version check errors? (Recommended: Yes)
            noVersion = true,         -- Should we log missing version info? (Recommended: Yes)
            usingRelease = true,      -- Should we log release version usage? (Recommended: Upto you)
        },

        -- Should we log whitelist command usage?
        whitelistCommands = {
            add = true,      -- Should we log when someone is added to the whitelist using the command?
            remove = true,   -- Should we log when someone is removed from the whitelist using the command?
        },

        -- Should we log player when player joins and loads into the server?
        connectionEvents = {
            successfulJoin = false,   -- Should we log successful joins?
        }
    }
}

-- When should we remove players from the server?
ehConfig.kick = {
    securityEvents = true,    -- Should we kick for security violations? (Recommended: Yes)
    versionEvents = true,     -- Should we kick for version problems?
    releaseVersion = true,    -- Should we kick non-whitelisted release users?
}

-- How should we identify players?
ehConfig.getPlayerId = function(player)
    return GetPlayerIdentifierByType(player, 'license2') or GetPlayerIdentifierByType(player, 'license')
end

-- How should we work with different server frameworks to check if a player is loaded?
ehConfig.onPlayerLoaded = function(callback)
    if GetResourceState("es_extended"):find("started") then
        AddEventHandler("esx:playerLoaded", function(source)
            callback(source)
        end)
    elseif GetResourceState("ND_Core"):find("started") then
        AddEventHandler("ND:characterLoaded", function(character)
            callback(character.source)
        end)
    elseif GetResourceState("qb-core"):find("started") or GetResourceState("qbx_core"):find("started") then
        AddEventHandler("QBCore:Server:PlayerLoaded", function(data)
            callback(data.PlayerData.source)
        end)
    elseif GetResourceState("ox_core"):find("started") then
        AddEventHandler("ox:playerLoaded", function(source)
            callback(source)
        end)
    else
        print("^1[ERROR] ^7 No compatible framework found. Please add your custom framework integration.")
    end
end

----------------------------------------------------------------
--- Important: Don't change anything below this line!
--- Why? These are core settings that keep everything working!
----------------------------------------------------------------
lib.locale()
_ars = {}
```
````
{% endtab %}
{% endtabs %}
