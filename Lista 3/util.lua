local util = {}

util.max = function (a,b)
    if a > b then
        return a
    else
        return b
    end
end

util.min = function (a,b)
    if a < b then
        return a
    else
        return b
    end
end

-- Teste
print( util.min(2, 4) )
print( util.max(2, 4) )
-->2
-->4
