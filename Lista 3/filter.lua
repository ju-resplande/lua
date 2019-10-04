function filter(arr, f)
    resp = {}
    
    for index, element in pairs(arr) do
            if f(element) == true then
                resp[#resp+1] = element
            end
    end
    
    return resp
end

local par = function(e)
    return (e % 2) == 0
end

local arr = {1,2,3,4}
local resp = filter(arr, par)

for index, element in ipairs(resp) do
    print(element)
end

--> resp = {2,4}
