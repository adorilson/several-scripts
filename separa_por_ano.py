import os

arquivos = os.listdir('.')
arquivos.sort()

for a in arquivos:
    d = a[:4]
    if d=='split2.py':
        continue
    try:
        os.listdir('../' + d)
    except:
        os.mkdir('../' + d)
    os.rename(a, '../' + d + '/' + a)
