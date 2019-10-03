x1 = io.read("*n")
y1 = io.read("*n")
x2 = io.read("*n")
y2 = io.read("*n")

xx = (x2-x1)*(x2-x1)
yy = (y2-y1)*(y2-y1)

d = math.sqrt(xx+yy)

print(string.format("A DISTANCIA ENTRE A e B = %.2f", d))
