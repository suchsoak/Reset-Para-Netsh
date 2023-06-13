@echo off
@echo.
@echo github: https://github.com/suchsoak
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] 1. Resetar redes do computador
@echo:: [*] 2. Sair do terminal 
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo.
set /p escolha= escolha uma opcao:
@echo ****************************
if %escolha% equ 1 goto escolha1 
if %escolha% equ 2 goto escolha2

:escolha1
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Resetadores de rede
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo.
@echo Configurando ipconfig... &&timeout /t 6 >null

ipconfig /release
ipconfig /renew
ipconfig /renew6
ipconfig /flushdns

@echo "Configuracao de ip concluida" &&timeout /t 5 > null
@echo.
@echo "-----------------------------"
@echo.
@echo "Configurando Netsh..." &&timeout /t 6 >null
@echo.
netsh winsock reset all
netsh int 6to4 reset all
netsh int ipv4 reset all
netsh int ipv6 reset all
netsh int httpstunnel reset all
netsh int isatap reset all
netsh int portproxy reset all
netsh int tcp reset all
netsh int teredo reset all

:echolha2 
cls
exit

@Echo Netsh configurado, agora reinicie o computador...

@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] 3. Reiniciar o computador
@echo:: [*] 4. Nao reiniciar
@echo:::::::::::::::::::::::::::::::::::::::::::: 

set /p escolha= escolha uma opcao:

@echo ****************************

if %escolha% equ 3 goto escolha3 
if %escolha% equ 4 goto escolha4

:escolha3
@echo O sistema sera reiniciado em breve, caso tenho que salvar algum arquivo esse é o momento.		
shutdown /r
@pause

:escolha4
cls
exit

