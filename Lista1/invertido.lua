n = io.read("*n")

centena = math.floor(n/100)
dezena  = math.floor((n%100)/10)
unidade = math.floor(n%10)

invertido = centena + 10*dezena + 100*unidade

print(invertido)
