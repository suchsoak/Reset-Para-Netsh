# Resetar-Configurações-Da-Internet-No-Computador.
<hr>

> Abra o Script como Administrador
<br>

> Um script Bat, que resetar configurações e portas como TCP. Do computador, Caso esteja tendo problemas com internet no computador ou notbook.

## Para Usuarios De Windows 
### Aplica-se a: Windows Server 2022, Windows Server 2019, Windows Server 2016, Azure Stack HCI, versões 21H2 e 20H2

> O script é para profissionais de TI ou para pessoas que estão tendo problemas de internet especialmente no Desktop.

# Codigos utilizados:
> Shell de Rede (netsh)

<ul>
<li>netsh winsock reset all</li>
<li>netsh int 6to4 reset all</li>
<li>netsh int ipv4 reset all</li>
<li>netsh int ipv6 reset all</li>
<li>netsh int httpstunnel reset all</li>  
<li>netsh int isatap reset all</li>  
<li>netsh int portproxy reset all</li>  
<li>netsh int tcp reset all</li>  
<li>netsh int teredo reset all</li> 
<li>ipconfig /release</li>
<li>ipconfig /renew</li>
<li>ipconfig /renew6</li>
</ul>

<hr>

# Caso esteja tendo problemas, me informe, para eu corrigir imediatamente.

### Documentação do netsh:

> Mais informações sobre os comandos utilizados
>
| Libraries |  Links |
| ------ | ------ |
|  shell de rede|  [https://learn.microsoft.com/pt-br/windows/win32/wmisdk/wmic](https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh)
|  Netsh | [https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh](https://learn.microsoft.com/pt-br/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754516(v=ws.10)) 
|  Ipconfig|  [https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/ipconfig](https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/ipconfig)

