# Hush

**Turn any website into its own Mac app — locked with Touch ID.**

WhatsApp, Gmail, Slack, anything: give Hush the website and a name, and it makes
a real Mac app for it. Its own icon in the Dock, opens with ⌘ Space, stays signed
in, and locks itself whenever you look away.

## Install

Open **Terminal**, paste this, press Return:

```bash
curl -fsSL https://raw.githubusercontent.com/Tarun-kumar-29/hush/main/install.sh | bash
```

Needs macOS 12 (Monterey) or newer. Nothing else gets installed.

<details>
<summary>Or install by hand</summary>

1. Download **Hush.zip** from the [latest release](https://github.com/Tarun-kumar-29/hush/releases/latest).
2. Unzip it and drag **Hush** into **Applications**.
3. The first time only: right-click Hush → **Open** → **Open** (it isn't from the App Store).

</details>

## Make an app

1. Open Hush and paste a website — `web.whatsapp.com`, `mail.google.com`, `app.slack.com`…
2. It fills in the name and grabs the site's icon. Change either if you like.
3. Press **Create App**. It opens right away, and from now on it's in ⌘ Space and Launchpad.

## What each app does

- **Locks itself** — when you switch to another app, after a few idle minutes,
  when the Mac sleeps, and when you minimise it. ⌘L locks it right away.
  Unlock with Touch ID or your Mac password.
- **Notifications** like a normal app — choose whether they show who it's from
  and the message, only who it's from, or just the app's name.
- **Private while you share your screen** — switch on "Hide from screen sharing"
  and people in your Meet, Zoom or Teams call see an empty space where the app
  is, while you keep using it (your own screenshots still work). Private
  banners show you notifications that the call can't see (macOS hides normal
  notifications while you share).
- **Mute** for an hour, 8 hours or until tomorrow, and choose what the Dock icon
  shows: the unread count, a dot, or nothing.
- **Your choice of sound** — the website's own alert sound, any macOS sound,
  a sound file of your own, or none.
- **Stays signed in**, separately from your browser and from every other app.
- **Settings** (⌘ ,) for all of it, and a **Privacy** menu for the quick toggles
  (⇧⌘P hides the window from screen sharing).

## Updates

Automatic. Hush and all the apps it made update themselves — you never need to
download anything again. **Check for Updates…** in the app menu checks right away.

## Good to know

- The lock covers the window; it isn't encryption. Your data stays on your Mac,
  protected by your Mac login.
- Closing a window keeps the app running so messages still arrive. ⌘Q quits.
