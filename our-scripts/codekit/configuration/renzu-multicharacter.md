# Renzu Multicharacter

If you're using `renzu_multicharacter`, you may need to make some additional modifications. Follow the instructions below based on your clothing script. _<mark style="color:orange;">**If you're not using**</mark><mark style="color:orange;">** **</mark><mark style="color:orange;">**`renzu_multicharacter`**</mark><mark style="color:orange;">**, you can skip this section**</mark>._

{% tabs %}
{% tab title="qb-clothing" %}
1. Open <mark style="color:yellow;">`config.lua`</mark> located in the <mark style="color:yellow;">`renzu_multicharacter`</mark> folder.
2. Find the line:

```lua
qb-clothing:client:openMenu
```

3. Replace it with the following code:

```lua
qb-clothes:client:CreateFirstCharacter
```
{% endtab %}

{% tab title="illenium-appearance" %}
1. Open <mark style="color:yellow;">`main.lua`</mark> located in the <mark style="color:yellow;">`renzu_multicharacter/client`</mark> folder.
2. Find the line:

```lua
exports['illenium-appearance']:startPlayerCustomization(function (appearance)
```

3. Just below `finished = true` (around line 433), insert the following trigger:

```lua
TriggerEvent("eh_cutscene:client:StartCutscene") -->> Start eh_cutscene
print('^2Started eh_cutscene')
```

<figure><img src="https://media.discordapp.net/attachments/1089526991348314113/1151920912313098331/image.png" alt=""><figcaption><p>This is how the modified client code should look like</p></figcaption></figure>
{% endtab %}
{% endtabs %}
