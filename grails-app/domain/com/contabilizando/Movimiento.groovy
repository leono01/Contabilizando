package com.contabilizando

import com.contabilizando.catalogos.Estado
import com.contabilizando.catalogos.Pais

class Movimiento implements Serializable{
    String      serie
    String      folio
    Date        fechaDeCertificacion
    String      lugarDeExpedicion
    String      formaDePago
    String      metodoDePago
    String      numeroDeSerieDeCertificadoDelEmisor
    String      folioFiscal
    String      numeroDeSerieDeCertificadoDelSat
    //String      concepto
    BigDecimal  importeNeto
    BigDecimal  totalImpuestosTrasladados
    BigDecimal  total
    
    TipoDeOperacion tipoDeOperacion
    Persona         emisor
    Persona         receptor
    
    String calleExpedicion
    String numeroExteriorExpedicion
    String numeroInteriorExpedicion
    String coloniaExpedicion
    String delegacionOMunicipioExpedicion
    Estado estadoExpedicion
    Pais   paisExpedicion
    String codigoPostalExpedicion
    
    static hasMany = [
                        conceptos:Concepto,
                        impuestos:Impuesto
                     ]
    
    static constraints = {
        serie                               nullable:true
        folio                               nullable:true
        fechaDeCertificacion                nullable:true
        lugarDeExpedicion                   nullable:true
        formaDePago                         nullable:true
        metodoDePago                        nullable:true
        numeroDeSerieDeCertificadoDelEmisor nullable:true
        folioFiscal                         nullable:true
        numeroDeSerieDeCertificadoDelSat    nullable:true
        importeNeto                         min:0.0, nullable:true
        totalImpuestosTrasladados           min:0.0, nullable:true
        total                               min:0.0, nullable:true
        
        tipoDeOperacion                     nullable:true
        emisor                              nullable:true
        receptor                            nullable:true
        
        calleExpedicion                 nullable:true
        numeroExteriorExpedicion        nullable:true
        numeroInteriorExpedicion        nullable:true
        coloniaExpedicion               nullable:true
        delegacionOMunicipioExpedicion  nullable:true
        estadoExpedicion                nullable:true
        paisExpedicion                  nullable:true
        codigoPostalExpedicion          nullable:true
        
        conceptos                       nullable:true
        impuestos                       nullable:true
    }
    
    static mapping = {
        conceptos       cascade: 'all-delete-orphan'
        impuestos       cascade: 'all-delete-orphan'        
    }
}
