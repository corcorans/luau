local stringutils = {}

-- Returns a string with the first letter capitalized
-- @param: s - string manipulate
-- @return: changed string
function stringutils:capitalize(s)
  return (string.lower(s):gsub("^%l", string.upper))
end

-- Trims leading and trailing whitespace.
-- @param: s - string to trim
-- @return: modified string
function stringutils:trim(s)
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end

-- Joins table elements with a delimiter
-- @param: t - table to retrieve elements
-- @param: d - delimiter to separate
-- @return: s - string of table elements separated by the delimiter
function stringutils:implode(t, d)
  local s = ""
  local c = 1

  for k, v in pairs(t) do
    if c == #t then
      s = s .. v
    else
      s =  s .. (v .. d)
    end

    c = c + 1
  end

  return s
end

-- Return the first character in a string
-- @param: s - string to get first character from
-- @return: c - first character of the string
function stringutils:chr(s)
  for c in s:gmatch"." do
    return c
  end
end

-- Returns all the characters in a string to an indexed table
-- @param: s - string to retrieve characters
-- @return: t - table containing the characters from the string
function stringutils:chrs(s)
  local t = {}
  local i = 1

  for c in s:gmatch"." do
    t[i] = c
    i = i + 1
  end

  return t
end

-- Returns a string with the cases swapped
-- @param: s - string to swap case
-- @return: t - new string with case swapped.
function stringutils:swapcase(s)
  local t = ""

  for c in s:gmatch"." do
    if c == string.upper(c) then
      t = t .. string.lower(c)
    else
      t = t .. string.upper(c)
    end
  end

  return t
end

return stringutils