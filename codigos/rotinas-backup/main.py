import os
import time
import zipfile
import shutil

src = os.path.join('C:\\Lojamix\\Backup', 'backup.zip')
des = os.path.join('C:\\Users\\Gabriel\\Desktop\\teste-bkp')
diasBkpsModerniza = 5
diasBkpsGoogleDrive = 5
diasBkpsCompactadosGoogleDrive = 5

# Apaga BKPs antigos do diretório padrão moderniza
os.system(f'forfiles -p "C:\\Lojamix\\Backup" -d -{diasBkpsModerniza} -c "cmd /c del /f /q @path"')
time.sleep(2)

# Apaga BKPs antigos com extensão ".bak" do google drive
os.system(f'forfiles -p "%HomePath%\\Google Drive\\bkp-sistema\\Backup" /M *.bak -d -{diasBkpsGoogleDrive} -c "cmd /c del /f /q @path"')
time.sleep(2)

# Apaga BKPs antigos compactados do google drive
os.system(f'forfiles -p "%HomePath%\\Google Drive\\bkp-sistema" /M *.zip -d -{diasBkpsCompactadosGoogleDrive} -c "cmd /c del /f /q @path"')
time.sleep(2)

# Compacta arquivos ".bak" para "backup.zip"
filezip = zipfile.ZipFile('C:\\Lojamix\\Backup\\backup.zip', 'w')

for folder, subfolders, files in os.walk('C:\\Lojamix\\Backup'):

    for file in files:
        if file.endswith('.bak'):
            filezip.write(os.path.join(folder, file), os.path.relpath(os.path.join(folder, file), 'C:\\Lojamix\\Backup'), compress_type=zipfile.ZIP_DEFLATED)

filezip.close()

# Tempo de espera (em segundos) para iniciar a cópia
time.sleep(10)

# Copia BKP compactado Lojamix > Google Drive
shutil.copy(src, des)
