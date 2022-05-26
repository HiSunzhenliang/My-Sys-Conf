# My Linux Setup

## Create a new user
```bash
adduser [--disabled-password] <your_username>
usermod -aG sudo <your_username>
su - <your_username>
```

## Setup my system
```bash
chmod +x ./setup.sh
./setup.sh
```
Follow the prompt and finish installing all softwares.
```bash
source ~/.zshrc
```

## Optional
Open .zshrc and replace the theme with powerlevel10k

And then update `.ssh/authorized_keys` with your ssh public key.
