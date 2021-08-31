import os
import time
import zipfile
import datetime
import subprocess

# Diretório
srcLojamix = os.path.join('C:\\Lojamix\\Backup')

# Variaveis gerais
diasBkpsModerniza = 5
dataAtual = datetime.date.today()

# Apaga BKPs antigos do diretório padrão moderniza

# Apaga BKPs antigos do diretório padrão moderniza
subprocess.run(['forfiles', '-p', f'{srcLojamix}', '/M', '*.bak', '-d', f'-{diasBkpsModerniza}', '-c', 'cmd /c del /f /q @path'])
time.sleep(2)

# Compacta arquivos ".bak" para "backup.zip"
filezip = zipfile.ZipFile(f'{srcLojamix}\\Backup_Lojamix_{dataAtual}.zip', 'w')

for folder, subfolders, files in os.walk(f'{srcLojamix}'):

    for file in files:
        if file.endswith('.bak'):
            filezip.write(os.path.join(folder, file), os.path.relpath(os.path.join(folder, file), f'{srcLojamix}'), compress_type=zipfile.ZIP_DEFLATED)

filezip.close()

# Apaga ZIPs antigos do diretório padrão moderniza
subprocess.run(['forfiles', '-p', f'{srcLojamix}', '/M', '*.zip', '-d', f'-{diasBkpsModerniza}', '-c', 'cmd /c del /f /q @path'])
