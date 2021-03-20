@AbapCatalog.sqlViewName: 'ZCCOBERTORDCART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Analytics.dataCategory: #CUBE
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Cobertura de material carteira CUBO'
define view ZC_COBERTORDEM_CART
  as select from vbbe as ordemremessa
    inner join   makt as material on material.matnr = ordemremessa.matnr
{
  ordemremessa.vbeln as OrdemRemessa,
  ordemremessa.posnr as PosicaoMaterial,
  ordemremessa.matnr as Material,
  ordemremessa.werks as Empresa,
  ordemremessa.lgort as Localestoquecarteira,
  ordemremessa.vbtyp as TipoOrdRem,
  @Aggregation.default: #SUM
  ordemremessa.omeng as QtdeCarteira,
  ordemremessa.mbdat as DataEntrega,
  material.maktx     as NomeMaterial
}
where
  ordemremessa.omeng > 0
