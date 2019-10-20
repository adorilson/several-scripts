"""
Tinha um arquivo com CPF/CPNJ e outros campos.
Mas precisava dos CNAE delas. Então baixei o arquivo
de CNAE do site da Receita Federal:
http://receita.economia.gov.br/orientacao/tributaria/cadastros/cadastro-nacional-de-pessoas-juridicas-cnpj/classificacao-nacional-de-atividades-econo$

https://cnae.ibge.gov.br/classificacoes/download-concla.html

e criei esse script para fazer a filtragem.

O arquivo empresa.csv é o arquivo com o CNAE, obtido nos links acima
O primeiro campo é o CNPJ e o 11o (indice 10) é o CNAE.

O arquivo pontencial.csv é o arquivo com o CNPJ sem o CNAE.
O CNPJ precisa ser o 1o campo do arquivo. A saída será o mesmo
conteúdo original acrescido do CNAE.


"""

# carregar cnpj e cnae de todo mundo para um dicionario
cnpj = {}

#empresas = open("empresa.csv")
for e in open("empresa.csv"):
    e = e.split(',')
    cnpj[e[0]] = e[10]
#print("empresas...")
# percorrer o potencial pesquisando o cnae no dict acima
##    jogar na saida o potencial acrescido do cnae
#potencial = open("potencial.csv")

for p in open("potencial.csv"):
    p = p[:-1].split(';')
    cnae = cnpj.get(p[0], "0")
    output = ';'.join(p)
    output += ';' + cnae
    print(output)

print("end...")
