# Hookord

Hookord is a simple Discord webhook client built with Node.js. It provides a lightweight way to send messages to a Discord channel using a webhook URL.

## Features

- Send plain text messages to Discord via webhook
- Support for username and avatar customization
- No dependencies and easy setup

## Installation

1. Clone or download the repository:

```bash
git clone https://github.com/tock-dev/hookord.git
cd hookord
```

## Usage

Create a webhook in your Discord channel and copy the webhook URL.
Run:

```bash
./run.sh
```

Enter all your details into the interactive script.

## Manual usage

Enter your details into these files:

- `webhook.txt`: Discord webhook URL
- `username.txt`: name displayed by the webhook (use ~ for default)
- `avatar.txt`: avatar image URL for the webhook messages (use ~ for default)
- `message.txt`: the message to send

And run with:

```bash
npm run
```

## Notes

Hookord is intended for simple webhook use cases. It is not a full Discord bot and does not support embeds, gateway events or bot accounts.
