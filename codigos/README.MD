# Apaga backups
Rotina criada somente para apagar backups antigos e gerar um zip com a quantidade de dias definidos na variável `diasBkpsModerniza`, se preferir baixar o executável já compilado diretamente dos releases, o nome estará ```apagaBackups-<qtdDias>```, exemplo de 5 dias ```apagaBackups-5.exe```.

------

# Encerra processos
Script para encerrar os serviços juntamente com um script básico em VB para executar o .bat em modo "silencioso", ou seja, quando executado o .bat não irá aparecer a tela preta do terminal para o usuário.
O bat já está em um loop de 300s, poderá alterar para o tempo que julgar necessário, apenas lembre de usar em segundos.

Para o cliente não ficar executando sempre que ligar o computador ou quando precisar, deixe o arquivo "encerra-processo.bat" e "bat-silencioso.vbs" na mesma pasta (Geralmente eu crio uma pasta chama "utils" dentro da "lojamix"), e criar uma tarefa no agendador de tarefas do windows deixando como disparador "ao fazer logon" e atrasando a tarefa em alguns segundos e nas ações adicionando somente o "bat-silencioso.vbs" pois ele ficará responsável por chamar o .bat e posteriormente o .bat irá encerrar o serviço no tempo especificado.

------

# Sincronização NF
Query SQL para resolver problema de sincronização das NFC-e do PDV com o retaguarda, basta executar no banco do PDV e substituir os IDs para o ID da nota que deseja sincronizar, para usar mais de um ID separe-os por vírgula, lembrando que é possível copiar todos os IDs desejados diretamente do PDV selecionando através da coluna.

------

# Script instalação Moderniza

Esse script tem como objetivo automatizar a instalação de todas as dependências do ERP Moderniza. <br>
Para funcionar corretamente o nome dos executáveis deverão seguir exatamente como estão nomeados no script, se baixar da pasta compartilhada no google drive eles já estão nomeados corretamente, os runtimes do C++ são baixados do [TechPowerUp](https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/), então dependendo da versão o nome da pasta poderá sofrer alteração, para corrigir isso basta renomear a pasta ou então alterar a linha 29 do ```install-lojamix.bat``` que é a linha responsável por chamar o .bat que instala todos os runtimes.