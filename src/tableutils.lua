local tableutils = {}

-- Returns a table containing all the entries from
-- table 1 that are not present in table 2.
-- @param: a - table 1
-- @param: b - table 2
-- @return: t - new table with difference
function tableutils:diff(a, b)
  local t = {}
  local c = 1

  for k, v in pairs(a) do
    if b[k] ~= v then
      t[c] = v
      c = c + 1
    end
  end

  return t
end

-- Returns the index from the table
-- @param: t - table to search
-- @param: i - Value to look for
-- @return: k - the key(index)
function tableutils:find(t, i)
  for k, v in pairs(t) do
    if v == i then
      return k
    end
  end

  return -1
end

-- Reverses a table
-- @param: t - table to be reversed
-- @return: n - original table reversed
function tableutils:reverse(t)
  local s = #t
  local n = {}

  for k, v in pairs(t) do
    n[s] = v
    s = s-1
  end

  return n
end

-- Delete an element from a table by index
-- @param: t - table to remove the element from
-- @param: i - index to remove element
-- @return: true if successful, otherwise false
function tableutils:delete_at(t, i)
  for k, v in pairs(t) do
    if k == i then
      t[k] = nil
      return true
    end
  end
  
  return false
end

-- Upper or lower cases the values in the give table
-- @error: Will be raised the case type is not upper or lower
-- @param: t - table to change
-- @param: c - case type (upper or lower)
-- @return: t - table with the values changed
function tableutils:change_value_case(t, c)
  if type(c) ~= "function" then
    error("Invalid case type, string.upper or string.lower are valid options")
  end

  for k, v in pairs(t) do
    t[k] = c(tostring(v))
  end
  
  return t
end

-- Print the keys (indices) and values of a table
-- @param: t - table to inspect
function tableutils:inspect(t)
  for k, v in pairs(t) do
    if type(v) == 'table' then
      self:inspect(v)
    else
      print(k, v)
    end
  end
end

return tableutils
