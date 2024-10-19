---
icon: folder-arrow-down
---

# Installation&#x20;

### Steps to Install the Resource

1. Download the script from [Keymaster](https://keymaster.fivem.net) under the granted assets.
2. Unzip and save it on your system.
3. Place the unzipped folder in your server's <mark style="color:yellow;">`resources`</mark> folder.
4. Rename it to <mark style="color:yellow;">`eh_codekit`</mark>.
5. Configure <mark style="color:yellow;">`config.lua`</mark> as needed.

***

### CFG Setup

Make sure to start `eh_codekit` immediately after your core resource in the resource start order. This ensures that `eh_codekit` is initialized before any scripts that depend on it. We’ve provided an example of the correct order below:

```markup
ensure ox_lib
ensure core
ensure eh_codekit
ensure dependent_script # All other our scripts and other scripts
```

***

### Required Dependencies

* **ox\_lib**
