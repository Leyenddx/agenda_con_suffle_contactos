//
//  PantallaAgenda.swift
//  Agenda_shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

var contactos = [
    ContactoAgenda(nombre:"Juan", telefono: "12345"),
    ContactoAgenda(nombre:"Ju", telefono: "12345"),
    ContactoAgenda(nombre:"Jan", telefono: "12345"),
    ContactoAgenda(nombre:"Jun", telefono: "12345"),
]


struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
    ]
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 10) {
                ForEach(contactos_actuales){ contacto in
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar:{print("Te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .background(Color.cyan)
            .frame(alignment: Alignment/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(10)
        }
        .background(Color.mint)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).tint(Color.red).foregroundColor(Color.green)
                Rectangle().frame(width: 65, height: 65).foregroundColor(Color.cyan)
                Image(systemName: "plus").foregroundColor(.white)
            }.padding(15).onTapGesture {
                print("Falta implementar la seccion de agregar contacto")
                mostrar_pantalla_agregar_contacto.toggle()
            }
            
            Spacer()
            
            ZStack{
                Circle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).tint(Color.red).foregroundColor(Color.green)
                Circle().frame(width: 65, height: 65).foregroundColor(Color.cyan)
                Image(systemName: "shuffle").background(Color.red)
            }.padding(15).onTapGesture {
                print("Lanzar un intent para inicialiar la llamada")
            }
        }.background(Color.yellow).sheet(isPresented: $mostrar_pantalla_agregar_contacto){
            PantallaAgregarContacto(boton_salir: {
                mostrar_pantalla_agregar_contacto.toggle()
            }, boton_agregar: {
                nombre, numero in
                    let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                contactos_actuales.append(contacto_nuevo)
                mostrar_pantalla_agregar_contacto.toggle()
            })
        }
    }
}

#Preview {
    PantallaAgenda()
}
