# Clone repo

```bash
git clone --bare git@github.com:amne/dotfiles.git ~/.wnbdots
```


# Git alias

```bash
alias wnbdots='/usr/bin/git --git-dir=$HOME/.wnbdots/ --work-tree=$HOME'
```

# Remove/backup files before checkout

```bash
mv .tmux.conf .tmux.conf.off
mv .profile .profile.off
mv .bashrc .bashrc.off
rm setup.sh
```

# Checkout

```bash
wnbdots checkout
```

This step should overwrite some .files. wnbdots alias is in .profile so it should stay on next logins

