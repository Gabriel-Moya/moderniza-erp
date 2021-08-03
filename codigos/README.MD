# Encerra processos
Script para encerrar os serviços juntamente com um script básico em VB para executar o .bat em modo "silencioso", ou seja, quando executado o .bat não irá aparecer a tela preta do terminal para o usuário.
O bat já está em um loop de 300s, poderá alterar para o tempo que julgar necessário, apenas lembre de usar em segundos.

Para o cliente não ficar executando sempre que ligar o computador ou quando precisar, deixe o arquivo "encerra-processo.bat" e "bat-silencioso.vbs" na mesma pasta (Geralmente eu crio uma pasta chama "utils" dentro da "lojamix"), e criar uma tarefa no agendador de tarefas do windows deixando como disparador "ao fazer logon" e atrasando a tarefa em alguns segundos e nas ações adicionando somente o "bat-silencioso.vbs" pois ele ficará responsável por chamar o .bat e posteriormente o .bat irá encerrar o serviço no tempo especificado.

------

# Rotinas backup
Script para rotinas de backup, o script irá apagar BKPs antigos da pasta "Lojamix\Backup", os arquivos com extensão ".BAK" do google drive (Se usar ele), os compactados com mais de 5 dias do google drive e posteriormente compactar os BKPs mais novos do "Lojamix\Backup" e copiar para o destino definido na variável "des".
Abaixo deixarei o que poderá ser alterado e como você pode realizar essas alterações.

A variável `src` da linha 6 recebe o caminho da pasta de backup do Moderniza, não altere, a não ser que tiver alterado a pasta de instalação do Moderniza.

A variável `des` da linha 7 recebe o destino que você deseja enviar o backup compactado, para alterar não remova as aspas simples e mantenha as contra barras duplas, quando copiar o caminho desejado provavelmente virá dessa forma `C:\users\exemplo\alguma-pasta-aqui` deverá acrescentar uma contra barra em cada nível de diretório, utilizando o exemplo acima ficaria `C:\\users\\exemplo\\alguma-pasta-aqui` isso é necessário devido a "\\" ser um caractere de escape do Python e em algumas letras, se houver somente uma contra barra, poderá ocorrer um erro na interpretação do caminho.

As variáveis `diasBkpsModerniza` `diasBkpsGoogleDrive` `diasBkpsCompactadosGoogleDrive` que estão nas linhas 8, 9 e 10, definem a quantidade de dias que irá manter, por exemplo `diasBkpsModerniza = 5` irá manter os backups de até 5 dias, os demais serão apagados.

Caso queira ignorar algum passo basta comentar a linha responsável com um "#" no início.

### Como executar
Realize todas as alterações que precisar no `main.py` e depois execute o `gera-executavel.bat`, ele irá gerar um arquivo executável dentro da pasta `dist` que você pode iniciar junto com o sistema ou criar uma tarefa através do agendador de tarefas.

------

# Sincronização NF
Query SQL para resolver problema de sincronização das NFC-e do PDV com o retaguarda, basta executar no banco do PDV e substituir os IDs para o ID da nota que deseja sincronizar, para usar mais de um ID separe-os por vírgula, lembrando que é possível copiar todos os IDs desejados diretamente do PDV selecionando através da coluna.