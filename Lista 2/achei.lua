 v = {}
 n = io.read("*n")
 
for i = 1, n do
    v[i] = io.read("*n")
end

m = io.read("*n")

for i = 1, m do
    encontrou = false
    achar = io.read("*n")
    
    for j = 1, n do
        if v[j] == achar then
            encontrou = true
        end
    end
    
   if encontrou == true then
        print("ACHEI")
   else
        print("NAO ACHEI")
   end
end
