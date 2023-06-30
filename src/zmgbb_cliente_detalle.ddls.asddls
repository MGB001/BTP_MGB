@AbapCatalog.sqlViewName: 'ZMGBV_CLI_DET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Cliente detalle'
@Metadata.allowExtensions: true
define view zmgbb_cliente_detalle
  as select from zmgbt_cliente
{
  key doc_id,
  key matricula,
      nombre,
      apellido,
      email,
      cntr_type
}
