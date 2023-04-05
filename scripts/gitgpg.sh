#!/bin/bash

echo "Input GPG key ID:"
read keyid

cat << EOF > ~/.gitgpg
[user]
	signingKey = $keyid
EOF
