# Trigger Events

## Here are some trigger events that you can utilize if you wish to&#x20;

{% tabs %}
{% tab title="Advertisement" %}
```lua
local messageDescription = 
local imageURL = 
local contactDetails = 
local publisher = 

TriggerEvent('3H-Posts:postAD', publisher, messageDescription, imageURL, contactDetails)
```
{% endtab %}

{% tab title="Twitter" %}
```lua
local messageDescription = 
local imageURL = 
local username = 

TriggerEvent('3H-Posts:postTweet', username, messageDescription, imageURL)
```
{% endtab %}

{% tab title="Instagram" %}
```lua
local messageDescription = 
local imageURL = 
local username = 

TriggerEvent('3H-Posts:instaPost', username, messageDescription, imageURL)
```
{% endtab %}
{% endtabs %}

