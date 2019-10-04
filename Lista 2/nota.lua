n = io.read("*n")
v = {}
maior = 0

for i = 1, n do
    v[i] = io.read("*n")
    
    if maior < v[i] then
        indiceMaior = i
        maior = v[i]
    end 
end

vezes = 0

for i = 1, n do
    if v[i] == v[#v] then
        vezes = vezes + 1
    end
end

print(string.format("Nota %d, %d vezes", v[#v], vezes))
print(string.format("Nota %d, indice %d", maior, indiceMaior-1))
