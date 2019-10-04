aluno = {}

while true do
    matricula = io.read("*n")
    
    if matricula == 0 then break end

    aluno[#aluno+1] = {} 

    aluno[#aluno]["matricula"] = matricula
    io.read("*l")
    aluno[#aluno]["nome"] = io.read("*l")
    aluno[#aluno]["idade"] = io.read("*n")
end

comparacao = function (a,b) return a.nome < b.nome end

table.sort(aluno,  comparacao)

for index, data in ipairs(aluno) do
    print(index)
    
    for label, item in pairs(data) do
        print(label, item) 
    end
end
