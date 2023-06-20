#!/bin/sh

set -e

WELCOME_MESSAGE="
👋 Welcome to the \"Advanced Checkout Integration Example\"

🛠️  Your environment is fully setup with all the required software.

🚀 Once you rename the \".env.example\" file to \".env\" and update \"CLIENT_ID\" and \"APP_SECRET\", the checkout page will automatically open in the browser after the server is restarted."

ALTERNATE_WELCOME_MESSAGE="
👋 Welcome to the \"Advanced Checkout Integration Example\"

🛠️  Your environment is fully setup with all the required software.

🚀 The checkout page will automatically open in the browser after the server is started."

if [ -n "$CLIENT_ID" ] && [ -n "$APP_SECRET" ]; then
    WELCOME_MESSAGE="${ALTERNATE_WELCOME_MESSAGE}"
fi

# sudo bash -c "echo \"${WELCOME_MESSAGE}\" > /usr/local/etc/vscode-dev-containers/first-run-notice.txt"
mkdir -p $HOME/.config/vscode-dev-containers/ && touch $HOME/.config/vscode-dev-containers/first-run-notice-already-displayed
touch $HOME/.config/vscode-dev-containers/first-run-notice.txt
bash -c "echo \"${WELCOME_MESSAGE}\" > $HOME/.config/vscode-dev-containers/first-run-notice.txt"
