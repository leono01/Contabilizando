import com.contabilizando.catalogos.*
import com.contabilizando.login.Rol
import com.contabilizando.login.Usuario
import com.contabilizando.login.UsuarioRol
import com.contabilizando.Categoria
import com.contabilizando.TipoDeOperacion
import grails.util.Environment 

class BootStrap {

   def municipioService
    def init = { servletContext ->
        /**switch(Environment.current){
            case Environment.DEVELOPMENT:**/
                
                new Usuario (
                    firstName : "Administrador",
                    lastName : "Del Sistema",
                    email : "admin@empresa.com",
                    username : "admin",
                    password : "admin",
                    enabled : true,
                    accountExpired : false,
                    accountLocked : false,
                    passwordExpired : false
                ).save()

                new Usuario (
                    firstName : "Diana",
                    lastName : "Villa",
                    email : "diana@empresa.com",
                    username : "contador",
                    password : "contador",
                    enabled : true,
                    accountExpired : false,
                    accountLocked : false,
                    passwordExpired : false
                ).save()

                new Rol (authority : "ROLE_ADMINISTRADOR").save()
                new Rol (authority : "ROLE_CONTADOR").save()


                new UsuarioRol (usuario : Usuario.findByUsername("admin"), rol : Rol.findByAuthority("ROLE_ADMINISTRADOR")).save()
                new UsuarioRol (usuario : Usuario.findByUsername("contador"), rol : Rol.findByAuthority("ROLE_CONTADOR")).save()
                
                
                new Categoria (nombreDeCategoria: "Ingreso").save()
                new Categoria (nombreDeCategoria: "Gasto").save()
                
                println Categoria.get(1)
                println Categoria.get(2)
                new TipoDeOperacion (nombreDeTipoDeOperacion:"Pago por servicios profesionales",categoria:Categoria.get(1)).save()
                new TipoDeOperacion (nombreDeTipoDeOperacion:"Gastos Reembolsables",categoria:Categoria.get(2)).save()
                println TipoDeOperacion.get(1)
                println TipoDeOperacion.get(2)
                //new TipoDeOperacion (nombreDeTipoDeOperacion:"Salida").save()
                
                
                new ConfiguracionEmpresa(nombreDeEmpresa:"NUUPTECH S.A. de C.V.",domicilio:"Calle Cerezos 943",
                                         email:"nuuptech1@gmail.com", estado:null, telefono:null
                                        ).save()
                new Pais(nombre:"México").save()
                new Estado(nombre:"Estado de México", pais : Pais.get(1)).save()//1
            /**new Estado(nombre:"Aguascalientes", pais : Pais.get(1)).save()
            new Estado(nombre:"Baja California", pais : Pais.get(1)).save()
            new Estado(nombre:"Baja California Sur", pais : Pais.get(1)).save()
            new Estado(nombre:"Campeche", pais : Pais.get(1)).save()//5
            new Estado(nombre:"Chiapas", pais : Pais.get(1)).save()
            new Estado(nombre:"Chihuahua", pais : Pais.get(1)).save()
            new Estado(nombre:"Coahuila", pais : Pais.get(1)).save()
            new Estado(nombre:"Colima", pais : Pais.get(1)).save()
            new Estado(nombre:"Distrito Federal", pais : Pais.get(1)).save()//10
            new Estado(nombre:"Durango", pais : Pais.get(1)).save()
            new Estado(nombre:"Guanajuato", pais : Pais.get(1)).save()
            new Estado(nombre:"Guerrero", pais : Pais.get(1)).save()
            new Estado(nombre:"Hidalgo", pais : Pais.get(1)).save()
            new Estado(nombre:"Jalisco", pais : Pais.get(1)).save()//15
            new Estado(nombre:"Michoacán", pais : Pais.get(1)).save()
            new Estado(nombre:"Morelos", pais : Pais.get(1)).save()
            new Estado(nombre:"Nayarit", pais : Pais.get(1)).save()
            new Estado(nombre:"Nuevo León", pais : Pais.get(1)).save()
            new Estado(nombre:"Oaxaca", pais : Pais.get(1)).save()//20
            new Estado(nombre:"Puebla", pais : Pais.get(1)).save()
            new Estado(nombre:"Querétaro", pais : Pais.get(1)).save()
            new Estado(nombre:"Quintana Roo", pais : Pais.get(1)).save()
            new Estado(nombre:"San Luis Potosí", pais : Pais.get(1)).save()
            new Estado(nombre:"Sinaloa", pais : Pais.get(1)).save()//25
            new Estado(nombre:"Sonora", pais : Pais.get(1)).save()
            new Estado(nombre:"Tabasco", pais : Pais.get(1)).save()
            new Estado(nombre:"Tamaulipas", pais : Pais.get(1)).save()
            new Estado(nombre:"Tlaxcala", pais : Pais.get(1)).save()
            new Estado(nombre:"Veracruz", pais : Pais.get(1)).save()//30
            new Estado(nombre:"Yucatán", pais : Pais.get(1)).save()            
            new Estado(nombre:"Zacatecas", pais : Pais.get(1)).save()**/
            
            municipioService.altaMunicipios()
            /**expedienteService.altaMunicipios2()
            expedienteService.altaMunicipios3()
            expedienteService.altaMunicipios4()
            expedienteService.altaMunicipios5()
            expedienteService.altaMunicipios6()**/
                /**break
        }**/
    }
    def destroy = {
    }
}
