@AbapCatalog.sqlViewName: 'ZCESTOQUE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Analytics.dataCategory: #CUBE
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Estoque dos materiais'
define view ZC_ESTOQUE
  as select from StockAccount2KeyFigure
{
  key matnr as Material,
  key werks as Plant,
      @Aggregation.default: #SUM
      labst as QtdePrevista,
      lgort as LocalEstoque
}
