# vis-copypasta

A vis plugin that creates keybindings for copying and pasting to the system clipboard.

## Installing this vis plugin

Download the repository. One way is with the git CLI:

```
git clone https://github.com/roguh.vis-copypasta
```

Copy `copypasta.lua` next to `visrc.lua`.

```sh
$ ls
visrc.lua copypasta.lua
```

Add this line to your `visrc.lua`:

```lua
require('copypasta')
```

`visrc.lua` can be found at `XDG_CONFIG_HOME/vis` or `$HOME/.config/vis`.
If not set, use `:help` for instructions on how to initialize `vis`.
You may also install it in Lua's path.
See documentation about the [`require` function](https://www.lua.org/pil/8.1.html).

If the copypasta plugin is found in another directory, use the different path and no `.lua` suffix:

```lua
copypasta = require('plugins-directory/vis-copypasta/copypasta')
-- Call this if the copypasta directory doesn't exist
copypasta.set_directory(os.getenv('HOME') .. '/.cache/bak')
```

```sh
$ tree
.
├── vis-copypasta
│   ├── README.md
│   └── copypasta.lua
└── visrc.lua
```

This module requires no configuration.

See [Vis' plugins documentation](https://github.com/martanne/vis/wiki/Plugins).

### Alternative installation

It may be easier to simply copy and paste all of `copypasta.lua` into your `visrc.lua` ;)

## Usage

Type Ctrl-V in `NORMAL` or `INSERT` modes.

Type Ctrl-C in `NORMAL` or `VISUAL_LINE` modes.

Ctrl-C does not work with multiple selections. It only copies the last value.

All of these commands use `vis`' built-in tool `vis-clipboard`, which is cross-platform.
