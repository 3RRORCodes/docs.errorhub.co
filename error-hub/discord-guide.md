---
icon: discord
---

# Discord Guide

Welcome to the **Discord Guide**! This guide shows you how to create a Discord bot. You'll learn how to get the bot's token, set permissions, turn on developer mode, copy IDs, create webhooks.

## Creating Discord Bot

{% stepper %}
{% step %}
### **Go to the Discord Developer Portal**

* [Click here](https://discord.com/developers/applications) to open the Discord Developer Portal.
* Sign in using your Discord credentials.
{% endstep %}

{% step %}
### **Create a New Application**

* Click **"New Application"**.
* Enter a **name** for your bot (Example: MyBot).
* Click **"Create"**.
{% endstep %}

{% step %}
### **Check for Bot Creation Option**

* In the left menu, click **"Bot"**.
* If you see an **"Add Bot"** button:
  * Click it.
  * Confirm by selecting **"Yes, do it!"**.
* If there is **no "Add Bot" option**, your bot has already been created.
{% endstep %}

{% step %}
### **Make Your Bot Public**

* Scroll down in the **"Bot"** tab.
* Toggle ON the **"Public Bot"** option.
{% endstep %}
{% endstepper %}

## Bot Token, Permissions & Intents

{% stepper %}
{% step %}
### **Get Your Bot Token**

* In the **Developer Portal**, go to **"Bot"** in the left menu.
* Click **"Reset Token"**.
* Copy the token immediately.
{% endstep %}

{% step %}
### **Enable Important Bot Intents**

* In the **"Bot"** tab, scroll to **"Privileged Gateway Intents"**:
  * Toggle ON **"Message Content Intent"** → Allows the bot to read messages (for commands, moderation, etc.).
  * Toggle ON **"Server Members Intent"** → Allows the bot to see members in the server (needed for welcoming users or role management).
  * Toggle ON **"Presence Intent"** → Allows the bot to detect user status (online, offline, etc.).
* Click **Save Changes**.
{% endstep %}

{% step %}
### **Set Bot Permissions & Generate an Invite Link**

* Go to **"OAuth2"** → **"URL Generator"**.
* Under **Scopes**, select **"Bot"**.
* Under **Bot Permissions**, select only what your bot needs:
  * For example: **Read Messages**, **Manage Messages**, or **Manage Roles**.
  * **Avoid using Administrator permissions unless absolutely necessary.**
* Copy the **generated URL**.
{% endstep %}

{% step %}
### **Invite Your Bot to a Server**

* Paste the **URL** in your browser.
* Choose the server where you want to add the bot.
* Click **"Authorize"** and complete the captcha.
{% endstep %}
{% endstepper %}

## **Tips to Keep Your Bot Secured**

{% hint style="warning" %}
* Keep your bot token secret and only share it with trusted people. If someone gets your token, they can control your bot.
* If your token is leaked, **reset it immediately** in the Developer Portal.
* **Avoid giving Administrator permissions** unless absolutely essential.
* **Check bot permissions often** to make sure they only have access to what they need.
{% endhint %}
