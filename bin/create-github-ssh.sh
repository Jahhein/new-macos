# Create Github SSH Key
# SEE: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

EMAIL=""
SSH_FILE=""

mkdir ~/.ssh
ssh-keygen -t ed25519 -C "$EMAIL"

eval "$(ssh-agent -s)"

touch ~/.ssh/config

echo "
	Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
"

ssh-add -K ~/.ssh/$SSH_FILE

