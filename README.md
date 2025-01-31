# SAPAnalyticsCloud-Ruptura
Relatório de ruptura, indisponibilidade e estoque com S4/hana e SAP Analytics Cloud

O objetivo desse relatório é mostrar a ruptura da produção dos materiais, onde é analisado a quantidade que tem em estoque e comparado com o que tem de ordem de venda "Pedidos" e assim identificar materiais que estão com status de urgência de produção.
Na aba de indisponibilidade é avaliado os materiais que estão no local de estoque disponível para venda "possível gerar remessa", então comparamos o estoque visível pelo comercial x ordem de venda "Pedidos".
Na aba estoque aparece as quantidade de materiais disponíveis por local de estoque, filtrando somente os itens com indisponibilidade, assim facilitando a análise de onde buscar o material que está faltando.

A primeira etapa foi criar o CUBO para buscar as informações no banco hana, criei um cubo para carteira e outro para estoque conforme código.

https://github.com/cirojunior/SAPAnalyticsCloud-Ruptura/blob/master/carteiraCUBO

https://github.com/cirojunior/SAPAnalyticsCloud-Ruptura/blob/master/estoqueCUBO

Depois dos dados coletados do banco hana, criei as consultas "query'.

https://github.com/cirojunior/SAPAnalyticsCloud-Ruptura/blob/master/carteiraQUERY

https://github.com/cirojunior/SAPAnalyticsCloud-Ruptura/blob/master/estoqueQUERY

agora de posse de todos os dados necessários para o desenvolvimento da análise.

IMPORTANTE: Dados homologados com o relatório "Administrar cobertura material" relatório de MRP.

Indo para o SAP Analytics Cloud chegou a hora de criar o modelo.

Basicamente ajustei alguns campos que precisavam de algum tipo de tratamento e duas medidas para calcular a ruptura.

ruptura = [Qtde_Estoque]-[Qtde_Venda]
IndicadorRuptura = IF([ruptura]<=0,1,0)

![modelo](https://user-images.githubusercontent.com/2106357/67517063-2348e900-f678-11e9-8ff5-e619d1e6400d.png)

e pronto hora de ir para história.

Na história alem de filtros precisei criar quatro dimensões calculadas para identificar as rupturas e facilitar a criação de filtros.

Segue exemplo de uma das dimensão calculada.

![dimensaocalculada](https://user-images.githubusercontent.com/2106357/67517545-34dec080-f679-11e9-8a82-3b9983a8cdbb.png)

Segue abaixo a visualização dos relatórios.

Visualização das informaçes de ruptura.

![Ruptura](https://user-images.githubusercontent.com/2106357/67513731-d235f680-f671-11e9-813f-425f45f51846.png)

Visualização das informações de Indisponibilidade.

![indisponibilidade](https://user-images.githubusercontent.com/2106357/67513753-e1b53f80-f671-11e9-8b70-779612e3a219.png)

Visualização de todos os locais de estoque.

![Estoque](https://user-images.githubusercontent.com/2106357/67513770-eb3ea780-f671-11e9-9b34-db4b433a21df.png)
