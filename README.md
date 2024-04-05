# Clone repo

```bash
git clone --bare https://github.com/amne/wnb.dots.git ~/.wnbdots
```

# Git alias

This will be automatically added if you run the init script
```bash
alias wnbdots='/usr/bin/git --git-dir=$HOME/.wnbdots/ --work-tree=$HOME'
```

# Remove/backup files before checkout

```bash
mv .tmux.conf .tmux.conf.off
rm setup.sh
```

# Checkout

```bash
wnbdots checkout
```

# Init

Assumes WSL2

```bash
~/dots/init/setup.sh
```

