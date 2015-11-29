package = "Luau"
version = "1.0-1"
source = {
   url = "git://github.com/corcorans/luau"
}
description = {
   summary = "The missing parts of Lua",
   detailed = [[
      More functionality added to core classes
      such as string and table.
   ]],
   homepage = "https://github.com/corcorans/luau",
   license = "MIT/X11" 
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      stringutils = "src/stringutils.lua",
      tableutils = "src/tableutils.lua"
   }
}
