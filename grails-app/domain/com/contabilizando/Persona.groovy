package com.contabilizando

import com.contabilizando.catalogos.Municipio
import com.contabilizando.catalogos.Estado
import com.contabilizando.catalogos.Pais
import com.contabilizando.catalogos.RegimenFiscal

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
    RegimenFiscal regimenFiscal
    
    static constraints = {
        rfc                         size: 1..13, nullable:false
        calleFiscal                 blank:true, nullable:false
        numeroExteriorFiscal        blank:true, nullable:false
        numeroInteriorFiscal        blank:true, nullable:false
        coloniaFiscal               blank:true, nullable:false
        localidadFiscal             blank:true, nullable:false
        delegacionOMunicipioFiscal  blank:true, nullable:false
        coloniaFiscal               blank:true, nullable:false
        estadoFiscal                blank:true, nullable:false
        paisFiscal                  blank:true, nullable:false
        codigoPostalFiscal          blank:true, nullable:false
        telefono                    blank:true, nullable:true
        email                       email:true, nullable:false
        regimenFiscal               blank:true, nullable:false
    }
    
    static mapping = {
        id generator: 'increment'
    }
}
