@AbapCatalog.sqlViewName: 'ZMGBV_MARCA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Marca'
define view ZMGBB_MARCA
  as select from zmgbt_marca
{
  key marca,
  @UI.hidden: true  
      url as imagen
}

