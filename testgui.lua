os.loadAPI("touchpoint")
local t = touchpoint.new("top")


for i = 1, 41 do
    t:add("left", nil, (i*2) -1, 1, i*2, 12, colors.red, colors.lime)
    
end
t:show()