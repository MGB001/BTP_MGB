@AbapCatalog.sqlViewName: 'ZMGBV_ALQUILER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Alquiler'
@Metadata.allowExtensions: true
define view zmgbi_alquiler
  as select from zmgbb_vehiculo as vehiculo
  association [1]    to ZMGBB_ALQUILER_DIA    as _alq_dia on vehiculo.matricula = _alq_dia.matricula
  association [0..*] to ZMGBB_MARCA           as _marca   on vehiculo.marca = _marca.marca
  association [0..*] to zmgbb_cliente_detalle as _cli_det on vehiculo.matricula = _cli_det.matricula
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
      alq_hasta,

      // 0 neutral grey
      // 1 negative red
      // 2 critical yellow
      // 3 positive green
      case
      when _alq_dia.dias <= 0 then 0
      when _alq_dia.dias between 1 and 30 then 1
      when _alq_dia.dias between 31 and 100 then 2
      when _alq_dia.dias > 100 then 3
      else 0
      end as tiempo_rest,
      '' as estado,
      _marca.imagen,
      _cli_det

}
