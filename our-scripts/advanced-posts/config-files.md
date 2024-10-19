# Config Files

{% tabs %}
{% tab title="config.lua" %}
```lua
Config = {  
	-- Which language do you want to use? For changing it to any other language check out the locales folder!
	Lan = 'en', 
	
	-- What is the name of your qb-core folder? Only change it if you changed the name of the folder
	Core = 'qb-core', 
	
	-- Which notify system do you want to use 'qb', 'okok', 'ox' 
	Notify = 'qb',  
	
	-- Which menu you want to use 'qb' or 'ox'?
	Menu = 'qb',  
	
	-- Which input do you want to use 'qb' or 'ox'?
	Input = 'qb', 
	
 	-- Does the player require a phone to be able to post?
	PhoneCheck = true, 
	
	-- What is the name of the phone item on your server? | Ignore this if PhoneCheck = false
	PhoneItem = "phone", 

	-- Do you want the player who is dead or is in the last stand should not to be able to post?
	HealthCheck = true, 

	-- Do you want admins to overwatch all the player's posts?
	GetLogs = true,
	
	-- Do you want to enable the /post command?
	EnablePostCmd = true,

	Cmd = {
		-- Recommended not to change until there is the same command already present in your server
		Post = 'post', --  What should be the command that lets you post ad/tweet/insta posts?
		Advert = 'ad', -- What should be the arg (command) that lets you post an ad?
		Tweet = 'tweet', -- What should be the arg (command) that lets you post an tweet?
		Insta = 'insta', -- What should be arg (command) that lets you post an insta post?
	},
	
	YellowPages = {
		
		Personal = {
			-- Do you want the personal ad's option to be shown up in the Yellow Pages menu?
			Enable = true,
		
			-- How much money should be deducted if a player posts a personal ad?
			-- Set PostCost = 'free' if you don't want any money to get deducted for a personal ad! 
			PostCost = 1000,

		},
		
		Business = {
			-- Do you want the business ad's option to be shown up in the Yellow Pages menu?
			Enable = true,
		
			-- Which are the jobs that are allowed to post ads as a business? 
			Jobs = {'cardealer', 'customs', 'realestate'},
		
			-- How much money should be deducted if a player posts a business ad?
			-- Set PostCost = 'free' if you don't want any money to get deducted for a business ad! 
			PostCost = 5000,
	
			-- Do you want to allow the business post to be able to ping a discord role? Can be used as an extra notify
			EnablePing = true,

			-- Which role did you want to be pinged when someone posts a business ad? Ignore this if you set EnablePing = false
			-- If you want to tag everyone role set RoleId = '@everyone'else just put RoleId = '2829231210' (Role ID)
			RoleId = '@everyone',

			-- Do you want the player's to be able to add their custom thumbnail for the business post?
			CustomThumbnail = true, 

			-- Do you want the business post to be posted with their job's label in their title? 
			CustomTitle = true,

		},
	},
}

Lang = {}
```
{% endtab %}

{% tab title="webhook.lua" %}
```lua
Webhook = {
	--|| CONFIGURE YELLOWPAGES WEBHOOK ||
	YellowPages = {
	
		-- Which colour do you want the post's embed to be? | You can get other colour codes from here -- https://www.spycolor.com
		EmbedColour = 16776960, 
			
		-- What do you want the post's username to be?
		Username = 'YELLOW PAGES',

		-- What do you want the post's footer text to be?
		FooterText = '3H Posts made with 💕 by 3RROR',
		
		-- What do you want the post's avatar to be?
		Avatar = 'https://cdn.discordapp.com/attachments/1090968541534109756/1090968598043971614/yp.png',
		
		-- What do you want the post's thumbnail to be? | Default image is of Yellow Pages
		Thumbnail = 'https://cdn.discordapp.com/attachments/1090968541534109756/1090968598043971614/yp.png',
			
		-- What is the webhook that will be used to post the ad?
		Hook = '', 
		
	},

 	--|| CONFIGURE TWITTER WEBHOOK ||
	Twitter = {
	
		-- Which colour do you want the post's embed to be? | You can get other colour codes from here -- https://www.spycolor.com
		EmbedColour = 44270, 
			
		-- What do you want the post's username to be?
		Username = 'TWITTER',

		-- What do you want the post's footer text to be?
		FooterText = '3H Posts made with 💕 by 3RROR',
		
		-- What do you want the post's avatar to be?
		Avatar = 'https://cdn.discordapp.com/attachments/1090968541534109756/1093780593864605696/twtc.png',
		
		-- What do you want the post's thumbnail to be? | Default image is of Twitter
		Thumbnail = 'https://cdn.discordapp.com/attachments/1090968541534109756/1090968598278848582/twt.png',
			
		-- What is the webhook that will be used to post the tweets?
		Hook = '', 
		
	},

	--|| CONFIGURE INSTAGRAM WEBHOOK ||
	Instagram = {
	
		-- Which colour do you want the post's embed to be? | You can get other colour codes from here -- https://www.spycolor.com
		EmbedColour = 14494331, 
			
		-- What do you want the post's username to be?
		Username = 'INSTAGRAM',

		-- What do you want the post's footer text to be?
		FooterText = '3H Posts made with 💕 by 3RROR',
		
		-- What do you want the post's avatar to be?
		Avatar = 'https://cdn.discordapp.com/attachments/1090968541534109756/1090968598572433438/insta.png',
		
		-- What do you want the post's thumbnail to be? | Default image is of Instagram
		Thumbnail = 'https://cdn.discordapp.com/attachments/1090968541534109756/1090968598572433438/insta.png',
			
		-- What is the webhook that will be used to post the insta post's?
		Hook = '', 
		
	},

	Logs = {
		-- What is the webhook that will be used to send the logs of all player's posts?
		Hook = '', 

		-- Supported colour for logs embed | -- https://www.spycolor.com/
		Colors = { 
    		['yellow'] = 16776960,
    		['blue'] = 44270,
    		['pink'] = 14494331,
		},
	},
}
```
{% endtab %}
{% endtabs %}
