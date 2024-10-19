# Installation&#x20;

## How to install the resource?

1. Download the script from your FiveM keymaster and extract the zip file.
2. Drag and drop the downloaded resource into your server resources folder.
3. Rename the resource folder to 3H-Posts.

## Here are the steps you can follow to send your phone's tweets, ads, and Instagram posts to Discord:

{% tabs %}
{% tab title="qb-phone" %}
## Advertisement App Setup

Replace the `RegisterNetEvent('qb-phone:server:AddAdvert', function(msg, url)` event in the `qb-phone > server > main.lua` file with

```lua
RegisterNetEvent('qb-phone:server:AddAdvert', function(msg, url)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local CitizenId = Player.PlayerData.citizenid
    if Adverts[CitizenId] ~= nil then
        Adverts[CitizenId].message = msg
        Adverts[CitizenId].name = "@" .. Player.PlayerData.charinfo.firstname .. "" .. Player.PlayerData.charinfo.lastname
        Adverts[CitizenId].number = Player.PlayerData.charinfo.phone
        Adverts[CitizenId].url = url
    else
        Adverts[CitizenId] = {
            message = msg,
            name = "@" .. Player.PlayerData.charinfo.firstname .. "" .. Player.PlayerData.charinfo.lastname,
            number = Player.PlayerData.charinfo.phone,
            url = url
        }
    end

    local messageDescription = msg
    local imageURL = url
    local contactDetails = Player.PlayerData.charinfo.phone
    local publisher = Player.PlayerData.charinfo.firstname
    TriggerEvent('3H-Posts:postAD', publisher, messageDescription, imageURL, contactDetails) --3H-Posts advertisment trigger!!
    
    TriggerClientEvent('qb-phone:client:UpdateAdverts', -1, Adverts, "@" .. Player.PlayerData.charinfo.firstname .. "" .. Player.PlayerData.charinfo.lastname)
end)
```

## Twitter App Setup

Replace the `RegisterNetEvent('qb-phone:server:UpdateTweets', function(NewTweets, TweetData)` event in the `qb-phone > server > main.lua` file with

```lua
RegisterNetEvent('qb-phone:server:UpdateTweets', function(NewTweets, TweetData)
    local src = source
    if Config.Linux then
        MySQL.insert('INSERT INTO phone_tweets (citizenid, firstName, lastName, message, date, url, picture, tweetid) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
            TweetData.citizenid,
            TweetData.firstName,
            TweetData.lastName,
            TweetData.message,
            TweetData.date,
            TweetData.url:gsub("[%<>\"()\' $]",""),
            TweetData.picture:gsub("[%<>\"()\' $]",""),
            TweetData.tweetId
        })
        TriggerClientEvent('qb-phone:client:UpdateTweets', -1, src, NewTweets, TweetData, false)
    else
        MySQL.insert('INSERT INTO phone_tweets (citizenid, firstName, lastName, message, date, url, picture, tweetid) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
            TweetData.citizenid,
            TweetData.firstName,
            TweetData.lastName,
            TweetData.message,
            TweetData.time,
            TweetData.url:gsub("[%<>\"()\' $]",""),
            TweetData.picture:gsub("[%<>\"()\' $]",""),
            TweetData.tweetId
        })
        
        local messageDescription = TweetData.message
        local imageURL = TweetData.url:gsub("[%<>\"()\' $]","") or TweetData.picture:gsub("[%<>\"()\' $]","")
        local username = TweetData.firstName
        TriggerEvent('3H-Posts:postTweet', username, messageDescription, imageURL) --3H-Posts tweets trigger!!
        
        TriggerClientEvent('qb-phone:client:UpdateTweets', -1, src, NewTweets, TweetData, false)
    end
end)
```

## Instagram App Setup

{% hint style="info" %}
At this time, Instagram is not supported in the qb-phone app
{% endhint %}
{% endtab %}

{% tab title="renewed-phone" %}
## Advertisement App Setup

Replace the `RegisterNetEvent('qb-phone:server:AddAdvert', function(msg, url)` event in the `qb-phone > server >` advertisements`.lua` file with

```lua
RegisterNetEvent('qb-phone:server:AddAdvert', function(msg, url)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local name = ("%s %s"):format(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname)
    local table = GetAdvertFromNumb(src)
    if not url then url = "" else url = url:gsub("[%<>\"()\'$]","") end

    if table then
        Adverts[table] = {
            message = msg:gsub("[%<>\"()\'$]",""),
            name = name,
            number = Player.PlayerData.charinfo.phone,
            url = url,
            source = src,
        }
    else
        Adverts[#Adverts+1] = {
            message = msg:gsub("[%<>\"()\'$]",""),
            name = name,
            number = Player.PlayerData.charinfo.phone,
            url = url,
            source = src,
        }
    end

    TriggerClientEvent('qb-phone:client:UpdateAdverts', -1, Adverts, name, src)
    local messageDescription = msg 
    local imageURL = url 
    local contactDetails = Player.PlayerData.charinfo.phone
    local publisher = Player.PlayerData.charinfo.firstname 

    TriggerEvent('3H-Posts:postAD', publisher, messageDescription, imageURL, contactDetails)
end)
```

## Twitter App Setup

Replace the `RegisterNetEvent('qb-phone:server:UpdateTweets', function(TweetData)` event in the `qb-phone > server > twitter.lua` file with

```lua
RegisterNetEvent('qb-phone:server:UpdateTweets', function(TweetData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local HasVPN = Player.Functions.GetItemByName(Config.VPNItem)

    if (TweetData.showAnonymous and HasVPN) then
        TweetData.firstName = "Anonymous"
        TweetData.lastName = ""
    end
    
    print(json.encode(TweetData.url))
    MySQL.insert('INSERT INTO phone_tweets (citizenid, firstName, lastName, message, url, tweetid, type) VALUES (?, ?, ?, ?, ?, ?, ?)', {
        TweetData.citizenid,
        TweetData.firstName:gsub("[%<>\"()\'$]",""),
        TweetData.lastName:gsub("[%<>\"()\'$]",""),
        TweetData.message:gsub("[%<>\"()\'$]",""),
        TweetData.url,
        TweetData.tweetId,
        TweetData.type,
    }, function(id)
        if id then
            Tweets[#Tweets+1] = {
                id = id,
                citizenid = TweetData.citizenid,
                firstName = TweetData.firstName:gsub("[%<>\"()\'$]",""),
                lastName = TweetData.lastName:gsub("[%<>\"()\'$]",""),
                message = TweetData.message:gsub("[%<>\"()\'$]",""),
                url = TweetData.url,
                tweetId =TweetData.tweetId,
                type = TweetData.type,
                date = os.date('%Y-%m-%d %H:%M:%S')
            }

            TriggerClientEvent('qb-phone:client:UpdateTweets', -1, src, Tweets, false)
            
            local messageDescription = TweetData.message:gsub("[%<>\"()\'$]","")
            local imageURL = TweetData.url 
            local username = TweetData.firstName:gsub("[%<>\"()\'$]","") 
            TriggerEvent('3H-Posts:postTweet', username, messageDescription, imageURL)
        end
    end)
end)
```

## Instagram App Setup

{% hint style="info" %}
At this time, Instagram is not supported in the renewed-phone
{% endhint %}
{% endtab %}
{% endtabs %}

