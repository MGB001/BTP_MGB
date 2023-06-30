CLASS zmgbcl_marca_eliminar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmgbcl_marca_eliminar IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DELETE FROM zmgbt_marca.
    IF sy-subrc EQ 0.
      out->write( 'Se eliminaron todos los datos de la tabla ZMGBT_MARCA' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
