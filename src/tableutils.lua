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

  return nil
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
-- @param: t - table to change
-- @param: c - case type (up or low)
-- @return: true on success, otherwise false
function tableutils:change_value_case(t, c)
  for k, v in pairs(t) do
    if c == up then
      t[k] = string.upper(tostring(v))
    elseif c == down then
      t[k] = string.lower(tostring(v))
    else
      error("Invalid case type, options are up or down.")
      return false
    end
  end

  return true
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
