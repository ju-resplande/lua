num = io.read("*n")
casaDecimal = {}
casasNaoNulas = 0
numInicial = num
repeat
	casaDecimal[#casaDecimal+1] = num%10
	if casaDecimal[#casaDecimal] > 0 then
	    casasNaoNulas = casasNaoNulas + 1
	end
	num = math.floor(num/10)	
until num == 0

if #casaDecimal == 1 then
	descricao = "(primeira ordem)"
elseif #casaDecimal == 2 then
	descricao = "(segunda ordem)"
elseif #casaDecimal == 3 then
	descricao = "(terceira ordem)"
else
	descricao = "(quarta ordem)"
end

descricao = descricao .. " " .. numInicial .. " = "

j = 1

for i = #casaDecimal, 1, -1 do
    if casaDecimal[i] ~= 0 then
	    if i == 4 then
		    descricao = descricao .. string.format("%d unidade", casaDecimal[i])
		    if casaDecimal[i] > 1 then
		        descricao = descricao .. "s"
		    end	    
		    descricao = descricao .. " de milhar"
	    elseif i == 3  then
		    descricao = descricao .. string.format("%d centena", casaDecimal[i])
	    elseif i == 2  then
		    descricao = descricao .. string.format("%d dezena", casaDecimal[i])
	    else
		    descricao = descricao .. string.format("%d unidade", casaDecimal[i])
	    end
	    
	    if casaDecimal[i] > 1 and i ~= 4 then
		        descricao = descricao .. "s"
	    end	    
	    if casasNaoNulas > j then
	        descricao = descricao .. " + "
	    end
	    j = j + 1
	end
end

descricao = descricao .. " = "
j = 1
for i = #casaDecimal, 1, -1 do
     if casaDecimal[i] ~= 0 then
	    potencia = 1
	   
	    for k = 2, i do
		    potencia = 10*potencia
	    end

	    descricao = descricao .. potencia*casaDecimal[i]
	    
	    if casasNaoNulas > j then
		    descricao = descricao .. " + "
	    end
	    
	    j = j + 1
	end
end

print(descricao)
