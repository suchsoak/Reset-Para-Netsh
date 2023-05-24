# Resetar-Configurações-Da-Internet-No-Computador.
## Um script Bat, que resetar configurações e portas como TCP. Do computador, Caso esteja tendo problemas com internet no computador ou notbook.

# Para Usuarios De Windows 
> Aplica-se a: Windows Server 2022, Windows Server 2019, Windows Server 2016, Azure Stack HCI, versões 21H2 e 20H2

<img src="https://media4.giphy.com/media/Mh7v5uRH2DAzGdEG5z/giphy.gif?cid=ecf05e47ecc1lkyimgnkvux5h8afu7hoafyozohfmdtt5rg7&ep=v1_stickers_search&rid=giphy.gif&ct=s" width="100" center=true></img>

O script é para profissionais de TI ou para pessoas que estão tendo problemas de internet especialmente no Desktop.

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
</ul>

# Caso esteja tendo problemas, me informe, para eu corrigir imediatamente.

# Documentação do netsh:

>O comando netsh no windows é bem poderoso, caso queira saber mais, informe-se com as documentações abaixo:

### https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh
### https://learn.microsoft.com/pt-br/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754516(v=ws.10)
<hr>

#### [![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Fira+Code&pause=1000&color=00F737&width=435&lines=Batchfile.)](https://git.io/typing-svg)
