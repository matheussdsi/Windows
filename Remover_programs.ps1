Listar osprogramas que temos instalado no computador / List the programs we have installed on the computer

wmic product get name,version


Abaixo só mudar "nome do programa" para qual deseja remover/ Below just change "program name" for which you want to remove

product where name="Nome do programa" call uninstall /nointeractive
