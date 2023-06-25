@echo off
@echo.
@echo -----------------------------------
@echo github: https://github.com/suchsoak
@echo -----------------------------------
@echo.
color 4
timeout 4 >null
@echo [!] Informacoes De Rede: 
color 7
@echo.
netsh wlan show interfaces | findstr "Perfil" 
netsh wlan show interfaces | findstr "Estado"
netsh wlan show interfaces | findstr "Sinal"
netsh wlan show interfaces | findstr "Canal"
netsh wlan show interfaces | findstr "Descrição"
netsh wlan show interfaces | findstr "BSSID"
netsh interface ipv4 show addresses "Wi-Fi" | findstr "Endereço IP"
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] 1. Resetar redes do computador
@echo:: [*] 2. Sair do terminal 
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo.
set /p escolha= escolha uma opcao:
@echo.
if %escolha% equ 1 goto escolha1 
if %escolha% equ 2 goto escolha2

:echolha2 
@echo.
@echo [*] Saindo Do Terminal...
timeout 3 >null
cls
exit

:escolha1
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Resetadores de rede
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo.
@echo Configurando ipconfig... 
timeout /t 4 >null
ipconfig /release
cls
ipconfig /renew
cls
ipconfig /renew6
cls
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Configuracao de ip concluida
@echo::::::::::::::::::::::::::::::::::::::::::::
timeout /t 3 > null
@echo.
@echo -----------------------------
@echo.
@echo Configurando Netsh... &&timeout /t 6 >null
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Configurando Netsh... 
@echo::::::::::::::::::::::::::::::::::::::::::::
timeout /t 6 >null
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
netsh int ip reset
netsh interface reset all

cls

@echo.
@echo -------------------------------------------------
@echo Netsh configurado, agora reinicie o computador.
@echo -------------------------------------------------
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] 3. Reiniciar o computador
@echo:: [*] 4. Nao reiniciar
@echo:::::::::::::::::::::::::::::::::::::::::::: 

set /p escolha= escolha uma opcao:

@echo.

if %escolha% equ 3 goto escolha3 
if %escolha% equ 4 goto escolha4

:escolha3
@echo [*] O sistema sera reiniciado em breve, caso tenho que salvar algum arquivo esse é o momento.	
timenout 5 	
shutdown /r
exit

:escolha4
@echo.
@echo [*] Saindo Do Terminal...
timeout 3 >null
cls
exit

