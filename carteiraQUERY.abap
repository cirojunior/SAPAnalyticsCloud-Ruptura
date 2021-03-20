@AbapCatalog.sqlViewName: 'ZQCOBERTORDCART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Analytics.query: true
@OData.publish: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Cobertura de material carteira QUERY'
define view ZQ_COBERTORDEM_CART
  as select from ZC_COBERTORDEM_CART
{
  //ZC_COBERTORDEM_CART
  OrdemRemessa,
  PosicaoMaterial,
  Material,
  Empresa,
  Localestoquecarteira,
  TipoOrdRem,
  @AnalyticsDetails.query.decimals: 0
  QtdeCarteira,
  DataEntrega,
  NomeMaterial
}
