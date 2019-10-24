@AbapCatalog.sqlViewName: 'ZQESTOQUE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Analytics.query: true
@OData.publish: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Estoque dos materiais'
define view ZQ_ESTOQUE
  as select from ZC_ESTOQUE
{
      //ZC_PREVISTOVENDAS
  key Material,
  key Plant,
      @EndUserText.label: 'Qtde Estoque'
      @AnalyticsDetails.query.decimals: 0
      QtdePrevista,
      LocalEstoque
}
