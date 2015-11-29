Luau!
====

The missing parts of Lua.

Modules to make up for the missing parts within the core of Lua.

## Modules:
* stringutils
* tableutils
 

## Install:
```html
  git clone git@github.com:corcorans/luau.git
  cd luau
  luarocks install luau-1.0-1.rockspec
```

## Usage:
```lua
  x = require("stringutils")
  print(x.swapcase("abc"))
```
