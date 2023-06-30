@AbapCatalog.sqlViewName: 'ZMGBV_ALQ_DIA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alquiler Dias'
define view ZMGBB_ALQUILER_DIA
  as select from zmgbt_vehiculo
{
  key matricula,
      marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta)
      end       as dias
}
