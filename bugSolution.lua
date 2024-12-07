local function foo(a)
  if a == nil then return nil end
  if type(a) == "number" then
    return a + 1
  elseif type(a) == "string" then
    return "String input not allowed"  -- Handle string input gracefully
  else
    error("Invalid input type")  -- Handle other unexpected types
  end
end

local result = foo(nil)
print(result)  -- Output: nil

result = foo(5)
print(result)  -- Output: 6

result = foo("hello")
print(result) -- Output: String input not allowed