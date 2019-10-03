SalarioMin = io.read("*n")
kW = io.read("*n")

CustokW = 0.7 * SalarioMin/100
CustoConsumo = CustokW * kW
CustoComDesconto = CustoConsumo*0.9

print(string.format("Custo por kW: R$ %.2f", CustokW))
print(string.format("Custo do consumo: R$ %.2f", CustoConsumo))
print(string.format("Custo com desconto: R$ %.2f", CustoComDesconto))
