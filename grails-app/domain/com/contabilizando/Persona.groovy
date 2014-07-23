package com.contabilizando

//import com.app.catalogos.Estado
//import com.app.catalogos.Pais

class Persona {
    String rfc
    String calleFiscal
    String numeroExteriorFiscal
    String numeroInteriorFiscal
    String coloniaFiscal
    String delegacionOMunicipioFiscal
    //Estado estadoFiscal
    //Pais   paisFiscal
    String codigoPostalFiscal
    String telefono
    String email
    static constraints = {
        rfc                         size: 1..13
        calleFiscal                 blank:false
        numeroExteriorFiscal        blank:false
        numeroInteriorFiscal        blank:false
        coloniaFiscal               blank:false
        delegacionOMunicipioFiscal  blank:false
        coloniaFiscal               blank:false
        //estadoFiscal                blank:false
        //paisFiscal                  blank:false
        codigoPostalFiscal          blank:false
        telefono                    blank:false
        email                       email:true
    }
}
