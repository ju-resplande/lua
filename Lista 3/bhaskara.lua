local a = 1
local b = 4
local c = 4

function delta (a,b,c)
    return b*b-4*a*c
end

function raizes(a,b,c)
    local x1, x2
    x1 = (-b-math.sqrt(delta(a,b,c)))/(2*a)
    x2 = (-b+math.sqrt(delta(a,b,c)))/(2*a)
    return x1, x2
end

print(raizes(a,b,c))
