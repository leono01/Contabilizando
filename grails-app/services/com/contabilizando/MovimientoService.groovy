package com.contabilizando

import grails.transaction.Transactional

@Transactional
class MovimientoService {

def separarNombreCompleto(String nombreCompleto)
    {        
        String separador = " "
        
        String[] nombreCompletoSeparado = nombreCompleto.split(separador)
        
        return nombreCompletoSeparado
    }
}
