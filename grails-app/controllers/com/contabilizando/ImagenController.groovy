package com.contabilizando

import com.contabilizando.login.Usuario

class ImagenController {

    def index() { }
    
    def mostrar = {        
        def foto = Usuario.get( params.id as long)        
        response.outputStream << foto?.foto
        response.outputStream.flush()        
    }  
}
