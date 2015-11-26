local stringutils = {}

-- Returns a string with the first letter capitalized
-- @param: s - string manipulate
-- @return: modified string with the first character capitalized
function stringutils:capitalize(s)
  return (string.lower(s):gsub("^%l", string.upper))
end

-- Trims leading whitespaces
-- @param: s - string to trim leading whitespaces
-- @return: modified string with leading whitespaces removed
function stringutils:ltrim(s)
  return (s:gsub("^%s*", ""))
end

-- Trim trailing whitespaces
-- @param: s - string to trim trailing whitespaces
-- @return: modified string with trailing whitespaces removed
function stringutils:rtrim(s)
  local n = #s
   
  while n > 0 and s:find("^%s", n) do
    n = n - 1
  end
   
  return s:sub(1, n)
end

-- Trims leading and trailing whitespace
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

-- Swaps the case of each character in a string
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

-- Compares two strings and ignores case
-- @param: a - string 1 to be compared to string 2
-- @param: b - string 2 to be compared to string 1
-- @return: -1 (length mismatch), 0 (not equal), 1(equal)
function stringutils:casecmp(a, b)
  if string.len(a) ~= string.len(b) then
    return -1
  end
   
  return string.lower(a) == string.lower(b) and 1 or 0
end

-- Determines if a string contains a pattern/word specified
-- @param: s - string to search
-- @param: w - pattern or word to look for in the string
-- @return: true or false
function stringutils:contains(s, w)
  return string.match(s, w) and true or false
end

return stringutils
