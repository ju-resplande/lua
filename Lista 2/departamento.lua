departamento = {
    Nome = "Compra e venda experior",
    Responsavel = "Vladmir Brasileiro",
    Telefones = {
        "1234-9832", "3832-3984", "3782-3823"
    },
    Colaboradores = {
        {
            Nome = "Maria dos Santos",
            email = "mds@dep.br"
        },
        {
            Nome = "Jessika Bragança",
            email = "mjb@dep.br"
        },
        {
            Nome = "Filipino Borgonha",
            email = "fb@dep.br"
        }
    }
}

for k, v in pairs(departamento) do
        if k == "Telefones" then
            print(k)
            for i, m in pairs(v) do
                print(m)
            end
            print()
        elseif k == "Colaboradores" then
            print(k)
            for j, n in pairs(v) do
               for u, t in pairs(n) do
                    print(u,t)
               end
               print()           
            end
        else
             print(k, v)
             print()
        end
end 
