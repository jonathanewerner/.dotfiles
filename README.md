# dotfiles
These are my dotfiles, meticulously slimmed down after having accumulated [way to much cruft](https://github.com/jonathanewerner/dotfiles-old) over the last years.
I'm pretty happy with the amount of files right now. There might be some nuggets for you in here.

Files worth looking at: 
- `aliases` for.. well, shell aliases. 
- `gitconfig` for a sensible, non-typing-intensive git configuration
- `vimrc` & `vim-config` for loads of freshly cleaned up, modularized & mostly commented vim goodness. 

### setup
You probably don't wanna grab all of those dotfiles and install them in your home directory. Dotfiles grow over time and are very personal. So the following instructions are mostly for me to remember. :)

This repo uses [rcm](https://github.com/thoughtbot/rcm) by thoughtbot ([Tutorial](http://thoughtbot.github.io/rcm/rcm.7.html)).
Install that tool via your package manager, then

```bash
git clone https://github.com/jonathanewerner/dotfiles ~/.dotfiles
rcup -v # optionally dry run with "lsrc" before
```

### Day to day usage
Add new rc files to the dotfiles directory with `mkrc <dotfile>`.
