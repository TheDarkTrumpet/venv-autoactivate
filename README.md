# venv-autoactivate

## Introduction

This is an incredibly simple plugin that I couldn't find already done to activate the `.venv/bin/activate` or `venv/bin/activate` scripts on entry into this directory.  I can't take much credit for the code here. Sources where I got it, and changes mentioned below:

- [original inspiration](https://stackoverflow.com/questions/45216663/how-to-automatically-activate-virtualenvs-when-cding-into-a-directory) - This is where I got the code I was sticking into my `.zshrc`
- [poetry-env](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/poetry-env/poetry-env.plugin.zsh) - This is where I took the pattern, more or less from

Besides taking the initital inspiration from the the above, some changes were made nonetheless:

1. Made it compatible with zsh without recurrision depth issue.
2. If one was to cd from one directory with a venv into another with a different venv, then activate it.
3. Added `venv` and `.venv`, in addition to the `.env` that they had (kept because why not, even though I don't use it)

If you don't store your `.venv` or `venv` in the project directory, you may be better served using the [pyenv plugin](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/pyenv/pyenv.plugin.zsh)

# Installation

There are many package managers for ZSH.  The only one really tested is `oh-my-zsh` which is below, but leaving the others too incase you use them.

Clone this repository using the following command:

```sh
    git clone https://github.com/TheDarkTrumpet/venv-autoactivate.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/venv-autoactivate
```

`$ZSH_CUSTOM` is oh-my-zsh’s customization directory ([docs](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization/)).

Then add `venv-autoactivate` to the `plugins` array in your `.zshrc`:

```
plugins=(
# ...
venv-autoactivate
# ...
)
```

Other untested methods are below, for installation - add them to your `.zshrc` depending on the package manager:

`zplug "TheDarkTrumpet/venv-autoactivate"`

`antigen bundle "TheDarkTrumpet/venv-autoactivate"`

`zgen load "TheDarkTrumpet/venv-autoactivate"`
