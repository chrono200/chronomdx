   CHRONO MDX WHATSAPP BOT
<a><img src='https://i.imgur.com/LyHic3i.gif'/></a><a><img src='https://i.imgur.com/LyHic3i.gif'/></a>

<p align="left">
  <a href="https://github.com/chrono200">
    <img alt="criss-vevo logo"  src="https://files.catbox.moe/b4khnd.jpg">
  </a>
</p>

<a><img src='https://i.imgur.com/LyHic3i.gif'/></a><a><img src='https://i.imgur.com/LyHic3i.gif'/></a>


#### SETUP 


<p align="left">
<a href="https://github.com/chrono200/CHRONO MDX/fork"><img src="https://img.shields.io/badge/Fork-white" alt="𝐅𝐨𝐫𝐤" width="100"></a>


<a><img src='https://i.imgur.com/LyHic3i.gif'/></a><a><img src='https://i.imgur.com/LyHic3i.gif'/></a>

 <p align="left">
<a href="https://shorturl.at/UUWem"><img src="https://img.shields.io/badge/Pair%20session%20code-white" alt="𝐏𝐚𝐢𝐫 𝐬𝐞𝐬𝐬𝐢𝐨𝐧 𝐜𝐨𝐝𝐞" width="300"></a>


<a><img src='https://i.imgur.com/LyHic3i.gif'/></a><a><img src='https://i.imgur.com/LyHic3i.gif'/></a>


<p align="left">
<a href="https://criss-ai.vercel.app" target="_blank"><img title="DEPLOY-ON HEROKU" src="https://img.shields.io/badge/DEPLOY%20ON%20HEROKU-white" alt="Heroku" width="300"></a>
</p>
  
<a><img src='https://i.imgur.com/LyHic3i.gif'/></a><a><img src='https://i.imgur.com/LyHic3i.gif'/></a>


  

[![JOIN WHATSAPP GROUP](https://raw.githubusercontent.com/Neeraj-x0/Neeraj-x0/main/photos/suddidina-join-whatsapp.png)](https://whatsapp.com/channel/0029Vb0HIV2G3R3s2II4181g)

 
<a><img src='https://i.imgur.com/LyHic3i.gif'/></a><a><img src='https://i.imgur.com/LyHic3i.gif'/></a>


### Owner
- Name: prince
- WhatsApp: +2348107205977
- Email: deeprince717@gmail.com

**Powered by CHRONODISRUP**

## Render deployment — direct WhatsApp pairing

The bot now supports Baileys phone-number pairing. You no longer need to upload a MEGA session file or set `SESSION_ID`.

1. In Render, open the CHRONO MDX Background Worker and go to **Environment**.
2. Add `PAIRING_NUMBER` with your WhatsApp number in international format, digits only. For a Nigerian number, replace the leading `0` with `234` (example format: `2348012345678`). Do not include spaces or a plus sign.
3. Save the environment changes and redeploy/restart the worker.
4. Open the worker's **Logs**. Copy the line labelled **CHRONO MDX WhatsApp pairing code**.
5. On your phone, open WhatsApp → **Linked Devices** → **Link a Device** → **Link with phone number instead**, then enter the code.

Keep the pairing code private. It grants access to your WhatsApp account. Never publish it in this repository or share it with anyone.

### Keep the WhatsApp session across restarts

The login is saved in the repository's `sessions/` directory. Render's ordinary ephemeral filesystem can be cleared when an instance is restarted or redeployed. To retain the login, attach a persistent disk to the worker and mount it at:

```
/opt/render/project/src/sessions
```

If your Render plan does not support persistent disks, you may need to pair again after the session files are lost. Do not commit the `sessions/` folder or its contents to GitHub.

