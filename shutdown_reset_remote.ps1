Shutdown /s = Desliga o computador.

Shutdown /r = Reinicia o computador.

shutdown /r /m \\pc2 = Reiniciar um computador remotamente

Shutdown /m \\hostname Especifica o computador pelo qual quer reiniciar.

Logoff = Fazer logoff de computadores Windows

shutdown /m \\hostname  /c "CASO VOCE VEJA ESSA MENSAGEM ENTRE EM CNTATO COM CENTRAL DE ATENDIMENTO" = Reiniciar com uma mensagem personalizada

shutdown /l /m\\Hostname = Desconecte o usuário do computador remoto

Shutdown /t 060 = Vai desligar computador em 1 minutos ,caso queira de 2 minutos multiplique o 60 pela quantidade de minutos.

Shutdown /c "insira as informções ,caso for desligar computador do usuário ,já vimos que isso da justá causa'



###############POWERSHELL##########################


Restart-Computer -ComputerName  -Force = Reinicie remotamente com powershell



Stop-Computer -ComputerName Hostname -Force = Desligando um computador via PowerShell


restart-computer (get-content c:\work\computers.txt) = Reiniciar uma lista de computadores via PowerShell



