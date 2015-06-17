--
-- For use with Algernon / Lua
-- 
-- Project page: https://github.com/xyproto/algernon
-- Web page: http://algernon.roboticoverlords.org/
--

-- Set the headers
content("application/javascript")
setheader("Cache-Control", "no-cache")

-- Use a JSON file for the comments
comments = JFile("comments.json")

-- Handle requests
if method() == "POST" then
  -- Add the form data table to the root node of the JSON document
  comments:add("x", ToJSON(formdata()))
else
  -- Return the contents of the JSON file
  print(comments:string())
end