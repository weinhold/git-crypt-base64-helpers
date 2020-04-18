# git-crypt Base64 Helpers

This repository contains two helper scripts wrapping git-crypt invocations to allow storing a symmetric secret key as a passphrase in a password manager. Even if the password manager supports storing key files, it is usually more convenient to simply store a text passphrase.

## Exporting a Key: git-crypt-print-key-base64.sh

`git-crypt-print-key-base64.sh` encodes a key (by default the default key) as Base64 and prints it to stdout. One would use this after `git crypt init` and add the Base64 encoded key as an entry to the password manager.

## Unlocking: git-crypt-unlock-with-base64-key-from-prompt.sh

`git-crypt-unlock-with-base64-key-from-prompt.sh` prompts for Base64 encoded key, decodes it, and passes it to `git crypt unlock`.
