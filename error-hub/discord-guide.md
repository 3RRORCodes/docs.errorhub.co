---
icon: discord
---

# Discord Guide

Welcome to the **Discord Guide**! This guide shows you how to create a Discord bot. You'll learn how to get the bot's token, set permissions, turn on developer mode, copy IDs, create webhooks.

## Creating Discord Bot

{% stepper %}
{% step %}
### **Go to the Discord Developer Portal**

1. [Click here](https://discord.com/developers/applications) to open the Discord Developer Portal.
2. Sign in using your Discord credentials.
{% endstep %}

{% step %}
### **Create a New Application**

1. Click **"New Application"**.
2. Enter a **name** for your bot (Example: MyBot).
3. Click **"Create"**.
{% endstep %}

{% step %}
### **Check for Bot Creation Option**

1. In the left menu, click **"Bot"**.
2. If you see an **"Add Bot"** button:
   * Click it.
   * Confirm by selecting **"Yes, do it!"**.
3. If there is **no "Add Bot" option**, your bot has already been created.
{% endstep %}

{% step %}
### **Make Your Bot Public**

1. Scroll down in the **"Bot"** tab.
2. Toggle ON the **"Public Bot"** option.
{% endstep %}
{% endstepper %}

## Bot Token, Permissions & Intents

{% stepper %}
{% step %}
### **Get Your Bot Token**

1. In the **Developer Portal**, go to **"Bot"** in the left menu.
2. Click **"Reset Token"**.
3. Copy the token immediately.
{% endstep %}

{% step %}
### **Enable Important Bot Intents**

1. In the **"Bot"** tab, scroll to **"Privileged Gateway Intents"**:
   * Toggle ON **"Message Content Intent"** → Allows the bot to read messages (for commands, moderation, etc.).
   * Toggle ON **"Server Members Intent"** → Allows the bot to see members in the server (needed for welcoming users or role management).
   * Toggle ON **"Presence Intent"** → Allows the bot to detect user status (online, offline, etc.).
2. Click **Save Changes**.
{% endstep %}

{% step %}
### **Set Bot Permissions & Generate an Invite Link**

1. Go to **"OAuth2"** → **"URL Generator"**.
2. Under **Scopes**, select **"Bot"**.
3. Under **Bot Permissions**, select only what your bot needs:
   * For example: **Read Messages**, **Manage Messages**, or **Manage Roles**.
   * **Avoid using Administrator permissions unless absolutely necessary.**
4. Copy the **generated URL**.
{% endstep %}

{% step %}
### **Invite Your Bot to a Server**

1. Paste the **URL** in your browser.
2. Choose the server where you want to add the bot.
3. Click **"Authorize"** and complete the captcha.
{% endstep %}
{% endstepper %}

***

## **Tips to Keep Your Bot Secured**

{% hint style="warning" %}
* Keep your bot token secret and only share it with trusted people. If someone gets your token, they can control your bot.
* If your token is leaked, **reset it immediately** in the Developer Portal.
* **Avoid giving Administrator permissions** unless absolutely essential.
* **Check bot permissions often** to make sure they only have access to what they need.
{% endhint %}

***

## Developer Mode & Copying IDs

### **Enable Developer Mode**

1. Open **Discord** → Go to **User Settings** (⚙️).
2. Scroll down to **Advanced** settings.
3. Toggle ON **Developer Mode**.

### **Copy User ID**

1. Right-click on a user’s name.
2. Click **"Copy ID"**.

### **Copy Role ID**

1. Go to **Server Settings** → **Roles**.
2. Right-click on a role.
3. Click **"Copy ID"**.

### **Copy Server (Guild) ID**

1. Right-click on the server’s name (top-left corner in Discord).
2. Click **"Copy ID"**.

***

## Create & Setup Webhooks

{% stepper %}
{% step %}
### **Go to Channel Settings**

1. Open Discord.
2. Navigate to the channel where you want the webhook to post messages.
3. Click the **gear icon** (⚙️) next to the channel name to open **Channel Settings**.
{% endstep %}

{% step %}
### **Create a Webhook**

1. In **Channel Settings**, go to the **"Integrations"** tab.
2. Click **"Create Webhook"**.
3. Enter a **name** for the webhook.
{% endstep %}

{% step %}
### **Copy the Webhook URL**

1. Click **"Copy Webhook URL"**.
{% endstep %}
{% endstepper %}

***

## **Tips to Keep Your Webhooks Secured**

{% hint style="warning" %}
* **Keep the webhook URL secret** and never share it with anyone. If someone gets access to your webhook URL, they can send fake or malicious messages. Delete and regenerate it immediately if leaked.
* **Keep the webhook URL private.** If leaked, others can use it to send fake or malicious messages.
* **Delete and regenerate the webhook URL** immediately if you suspect it has been compromised.
* **Restrict access to webhooks** by using them only in trusted environments or with trusted users to prevent misuse.
* **Review and monitor webhook activity** periodically to ensure no unauthorized actions are being performed.
{% endhint %}
