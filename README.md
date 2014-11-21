# aliases.sh

Dynamic bash aliases

# Install

```bash
wget -qO- https://raw.githubusercontent.com/ARivottiC/aliases.sh/master/Makefile | make install -f-
```

# How it works

Sources all executable _*.sh_ files in _~/.bash_aliases.d_ when a shell is initialized.

You can find lot's of pre-made aliases in the _generic_'s directory. To activate any just `chmod +x` it.

The git clone will ignore filemode changes and new directories. This way you can use it with your own files.

# Uninstall

```bash
wget -qO- https://raw.githubusercontent.com/ARivottiC/aliases.sh/master/Makefile | make uninstall -f-
```

