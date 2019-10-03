frase = io.read("*l") 

for i = 1, string.len(frase) do
	if i == 1 then
		modificado = string.upper(string.char(string.byte(frase, i)))	
	elseif string.byte(frase, i-1) == string.byte(" ") then
		modificado = modificado .. string.upper(string.char(string.byte(frase, i)))
	else
		modificado = modificado .. string.lower(string.char(string.byte(frase, i)))
	end
end

print(modificado)
