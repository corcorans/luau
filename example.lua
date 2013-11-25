local tableutils = require "src/tableutils"
local stringutils = require "src/stringutils"

local t = {"A", "B", "C", "D"}
local s = tableutils:reverse(t)

print("tableutils example")
for k, v in pairs(s) do print (k, v) end

print("")

print("stringutils example")
print(stringutils:swapcase("aBcD"))