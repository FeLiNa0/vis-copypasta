# vis-copypasta

A vis plugin that creates keybindings for copying and pasting to the system clipboard.

## Installing

Download this repository and `require` the file from your `visrc.lua` file.

Example:

```
git clone git@github.com:roguh/vis-copypasta ~/.config/vis/vis-copypasta
```

Then, your `visrc.lua` must load the file. For example:

```lua
require("./vis-copypasta/copypasta.lua")
```

### Alternative installation

It may be easier to simply copy and paste all of `copypasta.lua` into your `visrc.lua` ;)

## Usage

Simply type Ctrl-C and Ctrl-V.

Ctrl-C will require you to press ENTER afterwards. This is a temporary bug.

Ctrl-C does not work with multiple selections. It only copies the last value.

All of these commands use `vis`' built-in tool `vis-clipboard`, which is cross-platform.
