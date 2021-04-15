# Encerra processos
Script para encerrar os serviços juntamente com um script básico em VB para executar o .bat em modo "silencioso", ou seja, quando executado o .bat não irá aparecer a tela preta do terminal para o usuário.
O bat já está em um loop de 300s, poderá alterar para o tempo que julgar necessário, apenas lembre de usar em segundos.

------

Para o cliente não ficar executando sempre que ligar o computador ou quando precisar, deixe o arquivo "encerra-processo.bat" e "bat-silencioso.vbs" na mesma pasta (Geralmente eu crio uma pasta chama "utils" dentro da "lojamix"), e criar uma tarefa no agendador de tarefas do windows deixando como disparador "ao fazer logon" e atrasando a tarefa em alguns segundos e nas ações adicionando somente o "bat-silencioso.vbs" pois ele ficará responsável por chamar o .bat e posteriormente o .bat irá encerrar o serviço no tempo especificado.