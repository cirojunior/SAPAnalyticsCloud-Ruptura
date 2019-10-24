# SAPAnalyticsCloud-Ruptura
Relatório de ruptura, indisponibilidade e estoque com S4/hana e SAP Analytics Cloud

O objetivo desse relatório é mostrar a ruptura da produção dos materiais, onde é analisado a quantidade que tem em estoque e comparado com o que tem de ordem de venda "Pedidos" e assim identificar materiais que estão com status de urgência de produção.
Na aba de indisponibilidade é avaliado os materiais que estão no local de estoque disponível para venda "possível gerar remessa", então comparamos o estoque visível pelo comercial x ordem de venda "Pedidos".
Na aba estoque aparece as quantidade de materiais disponíveis por local de estoque, filtrando somente os itens com indisponibilidade, assim facilitando a análise de onde buscar o material que está faltando.

A primeira etapa foi criar o CUBO para buscar as informações no banco hana, criamos um cubo para carteira e outro para estoque conforme código.




Visualização das informaçes de ruptura.

![Ruptura](https://user-images.githubusercontent.com/2106357/67513731-d235f680-f671-11e9-813f-425f45f51846.png)

Visualização das informações de Indisponibilidade.

![indisponibilidade](https://user-images.githubusercontent.com/2106357/67513753-e1b53f80-f671-11e9-8b70-779612e3a219.png)

Visualização de todos os locais de estoque.

![Estoque](https://user-images.githubusercontent.com/2106357/67513770-eb3ea780-f671-11e9-9b34-db4b433a21df.png)
