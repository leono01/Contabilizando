package com.contabilizando.login

class UserController extends grails.plugin.springsecurity.ui.UserController {
    
    def verUsuario(){
        //def elUsuario = Usuario.get(params.id)
        //redirect controller:"expediente", action:"costos", id:unExpediente.id
        [usuario : Usuario.get(params.id as long)]
    }
    
}
