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
  is, while you keep using it. Normal screenshots come out black too, so use
  **Screenshot This Window** (⇧⌘2) for your own screenshot. Private
  banners show you notifications that the call can't see (macOS hides normal
  notifications while you share).
- **Private banners you can style** — compact or large, light or dark, any
  corner. Hover to keep one on screen; messages from the same person stack
  into one banner with a count; one click mutes for an hour.
- **Mute** for an hour, 8 hours or until tomorrow, or set **quiet hours** (say
  10 PM–8 AM every day). Choose what the Dock icon shows: the unread count, a
  dot, or nothing.
- **Your choice of sound and volume** — the website's own alert sound, any macOS
  sound, a sound file of your own, or none, at the level you pick.
- **Stays signed in**, separately from your browser and from every other app.
- **Profiles** — sets of settings that switch on by themselves: Work on
  weekdays 9–6, Meeting while Zoom or Teams is open (hidden from sharing, silent,
  private banners), Night muted 10 PM–7 AM, Home on your Wi-Fi, On the Go on
  battery — or your own, by days and hours, Wi-Fi network, open apps, an
  external display or battery. Switch by hand from the Privacy menu any time.
- **Shortcuts you choose** — lock, hide from screen sharing, screenshot, mute,
  banners on/off, next profile, and one that **shows or hides the app from anywhere**.
- **Settings** (⌘ ,) for all of it, and a **Privacy** menu for the quick toggles.

## Updates

Automatic. Hush and all the apps it made update themselves — you never need to
download anything again. **Check for Updates…** in the app menu checks right away.

## Good to know

- The lock covers the window; it isn't encryption. Your data stays on your Mac,
  protected by your Mac login.
- Closing a window keeps the app running so messages still arrive. ⌘Q quits.
