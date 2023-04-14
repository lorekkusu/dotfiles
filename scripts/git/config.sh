#!/bin/bash

echo "Input GPG key ID:"
read keyid

gpg --armor --export $keyid

cat << EOF > ~/.gitgpg
[user]
	signingKey = $keyid
EOF
