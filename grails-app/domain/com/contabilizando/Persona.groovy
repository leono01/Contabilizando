package com.contabilizando

import com.contabilizando.catalogos.Municipio
import com.contabilizando.catalogos.Estado
import com.contabilizando.catalogos.Pais

class Persona {
    String rfc
    String calleFiscal
    String numeroExteriorFiscal
    String numeroInteriorFiscal
    String coloniaFiscal
    String localidadFiscal
    Municipio delegacionOMunicipioFiscal
    Estado estadoFiscal
    Pais   paisFiscal
    String codigoPostalFiscal
    String telefono
    String email
    String regimenFiscal
    
    static constraints = {
        rfc                         size: 1..13, nullable:false
        calleFiscal                 blank:true, nullable:true
        numeroExteriorFiscal        blank:true, nullable:true
        numeroInteriorFiscal        blank:true, nullable:true
        coloniaFiscal               blank:true, nullable:true
        localidadFiscal             blank:true, nullable:true
        delegacionOMunicipioFiscal  blank:true, nullable:true
        coloniaFiscal               blank:true, nullable:true
        estadoFiscal                blank:true, nullable:true
        paisFiscal                  blank:true, nullable:true
        codigoPostalFiscal          blank:true, nullable:true
        telefono                    blank:true, nullable:true
        email                       email:true, nullable:true
        regimenFiscal               blank:true, nullable:true
    }
    
    static mapping = {
        id generator: 'increment'
    }
}
