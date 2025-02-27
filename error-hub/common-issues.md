---
icon: screwdriver-wrench
---

# Common Issues

Welcome to our common problems page! We will make sure to include every potential issue that users may encounter in our comprehensive list. Here you will discover quick fixes and helpful hints in case you run into any issues when utilizing our resources. This page has quick and easy solutions for technical issues, mistakes, and common traps.



<details>

<summary>YOU LACK THE REQUIRED ENTITLEMENT</summary>

If this problem persists, please attempt to restart your server and verify that the Keymaster account associated with the asset purchase is the correct one.

</details>

<details>

<summary>FAILED TO VERIFY PROTECTED RESOURCE</summary>

If you experience this problem, it might be because of one of the following:

* The artifacts on your server might be out of date.
* FileZilla might have trouble opening encrypted files; try utilizing another program.
* It's possible that corrupted files were transferred. Make sure to copy hidden files, particularly the`.fxap` file located in a protected resource. These necessary files might be skipped by some FTP software.

</details>

<details>

<summary>COULDNT START RESOURCE</summary>

Make sure you have installed all required dependencies as listed in the docs and `fxmanifest.lua` file if you run into this problem. Restart the server after installing the necessary dependencies.&#x20;

Please feel free to open a support ticket on our Discord for additional help if the issue continues.

</details>

<details>

<summary>ATTEMPT TO INDEX A NIL VALUE (GLOBAL 'LIB')</summary>

If this problem arises, ensure that the `shared_scripts` section of the `fxmanifest.lua` file contains the line `'@ox_lib/init.lua'`. If the line is not present, simply add it; if it is present but followed by two hyphens, as in `-- '@ox_lib/init.lua'`, simply remove it.&#x20;

After applying the modifications, ensure the server is restarted.

```lua
shared_scripts { 
    '@ox_lib/init.lua', 
}
```



</details>

<details>

<summary>ATTEMPT TO INDEX A NIL VALUE (GLOBAL 'MySQL') </summary>

If this problem arises, ensure that the `server_scripts` section of the `fxmanifest.lua` file contains the line `'@oxmysql/lib/MySQL.lua'`. If the line is not present, simply add it; if it is present but followed by two hyphens, as in `-- '@oxmysql/lib/MySQL.lua`', simply remove it.&#x20;

After applying the modifications, ensure the server is restarted.

```lua
server_scripts { 
    '@oxmysql/lib/MySQL.lua', 
}
```

</details>

<details>

<summary>USED WRONG KEYMASTER ACCOUNT TO BUY A RESOURCE</summary>

You can easily transfer a purchased resource to the correct Cfx.re account if you accidentally used the incorrect account.

***

<mark style="color:red;">**WARNING**</mark>**:** Transfer will remove this license from your account and move it to another Cfx.re account. This action is irreversible and can be done only once for each license.

***

Use these steps for transferring any resource to a different cfx.re account:

1. Go to [CFX Portal](https://portal.cfx.re/assets/granted-assets).
2. Then select <mark style="color:yellow;">Granted Assets</mark>.&#x20;
3. Locate the asset or resource you want to transfer, select it, and click the transfer.
4. Enter your cfx.re account username, and click on transfer button but keep this mind. <mark style="color:orange;">Transferring this asset will remove its grant from your account.</mark> <mark style="color:orange;"></mark><mark style="color:orange;">**All asset transfers are irreversible and cannot be undone**</mark>**.**&#x20;
5. Navigate to the cfx.re portal of the target cfx account. Locate the asset section, then select "Pending Transfer" or [click here](https://portal.cfx.re/assets/transfers).
6. Accept the transfer, and you're all set.

</details>

