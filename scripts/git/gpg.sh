#!/bin/bash

gpg --batch --yes --passphrase '' --quick-gen-key "YuHung Lo <33674612+lorekkusu@users.noreply.github.com>" rsa4096 sign never
gpg --list-keys
