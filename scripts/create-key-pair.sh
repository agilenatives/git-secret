#!/bin/bash

echo "Let's create a new key pair for you."
if [[ -z "${EMAIL}" ]]
then
  echo "Type your email:"
  read EMAIL
fi

mkdir -p /config

echo "Key-Type: RSA" >> /config/key
echo "Key-Length: 4096" >> /config/key
echo "Subkey-Type: RSA" >> /config/key
echo "Subkey-Length: 4096" >> /config/key
echo "Name-Real: ${EMAIL}" >> /config/key
echo "Name-Comment: ${EMAIL}" >> /config/key
echo "Name-Email: ${EMAIL}" >> /config/key
echo "Expire-Date: 0" >> /config/key

gpg --batch --generate-key /config/key
gpg --list-secret-keys

mkdir -p keys
gpg --batch --export --armor ${EMAIL} > keys/public.gpg
gpg --batch --export-secret-keys --armor ${EMAIL} > keys/private.gpg
