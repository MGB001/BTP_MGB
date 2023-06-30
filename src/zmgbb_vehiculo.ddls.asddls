@AbapCatalog.sqlViewName: 'ZMGBV_VEHICULO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vehiculo'
define view zmgbb_vehiculo
  as select from zmgbt_vehiculo
{
  key matricula,
      marca,
      modelo,
      color,
      motor,
      potencia,
      und_potencia,
      combustible,
      consumo,
      fecha_fabr,
      puerta,
      precio,
      moneda,
      alquilado,
      alq_desde,
      alq_hasta
}
