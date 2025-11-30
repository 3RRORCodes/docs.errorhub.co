---
icon: folder-arrow-down
---

# Installation&#x20;

### Steps to Install the Resource

{% stepper %}
{% step %}
#### Download the Script

Download the script from the [CFX Portal](https://portal.cfx.re/assets/granted-assets) under your granted assets.
{% endstep %}

{% step %}
#### Extract and Place the Resource

Unzip the downloaded file and place the folder in your server's <mark style="color:yellow;">`resources`</mark> folder.
{% endstep %}

{% step %}
#### Rename the Resource Folder

Rename the folder to <mark style="color:yellow;">`[raycrest-restaurant]`</mark>.
{% endstep %}

{% step %}
#### Install Dependencies

Download and set up the required dependencies

* [ox\_lib](https://github.com/CommunityOx/ox_lib/releases/latest)
* [xSound](https://github.com/Xogy/xsound/releases/latest)
{% endstep %}

{% step %}
#### Configure the Script

Open the `config` folder inside the script and configure <mark style="color:yellow;">`config.lua`</mark>, <mark style="color:yellow;">`consumable.lua`</mark>, <mark style="color:yellow;">`delivery.lua`</mark>, and <mark style="color:yellow;">`recipe.lua`</mark> as needed. Most settings are pre-configured, but you can customise them to match your server.&#x20;
{% endstep %}

{% step %}
#### Add Inventory Images

Download the provided inventory images and add them to your inventory system. <a href="configuration/adding-inventory-images.md" class="button primary" data-icon="image-landscape">Get Images</a> Check out the page for instructions on adding the images.
{% endstep %}

{% step %}
#### Add Items

Add the provided item list to your system. <a href="configuration/adding-items.md" class="button primary" data-icon="utensils">Get Item List</a> Check out the page for the complete list and setup instructions.
{% endstep %}

{% step %}
#### Add the Job

Add the job to your framework. <a href="configuration/adding-job.md" class="button primary" data-icon="briefcase">Get Job Config</a> Check out the page for the complete job configuration and setup instructions.
{% endstep %}

{% step %}
#### Start the Resource (Optional)

If your server doesn't auto-load resources, add ensure <mark style="color:yellow;">`[raycrest-restaurant]`</mark> to your <mark style="color:yellow;">`server.cfg`</mark> and restart your server. Otherwise, the script will load automatically.
{% endstep %}
{% endstepper %}

