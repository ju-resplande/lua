dinheiro = io.read("*n")

cem = math.floor(dinheiro/100)
dinheiro = dinheiro - 100*cem

cinquenta = math.floor(dinheiro/50)
dinheiro = dinheiro - 50*cinquenta

dez = math.floor(dinheiro/10)
dinheiro = dinheiro - 10*dez

um = dinheiro

print(string.format("NOTAS DE 100 = %d", cem))
print(string.format("NOTAS DE 50 = %d", cinquenta))
print(string.format("NOTAS DE 10 = %d", dez))
print(string.format("NOTAS DE 1 = %d", um))


