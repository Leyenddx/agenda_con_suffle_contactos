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
    ContactoAgenda(nombre:"Ja", telefono: "12345"),
    ContactoAgenda(nombre:"Jn", telefono: "12345"),
    ContactoAgenda(nombre:"Judsana", telefono: "12345"),
    ContactoAgenda(nombre:"Judsana2", telefono: "12345"),
    ContactoAgenda(nombre:"Judsana3", telefono: "12345"),
    ContactoAgenda(nombre:"Judsana4", telefono: "12345"),
    ContactoAgenda(nombre:"Judsana5", telefono: "12345"),
]


struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 10) {
                ForEach(contactos){ contacto in
                    //Text("\(contacto.nombre)")
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
                Image(systemName: "plus").background(Color.red)
            }.padding(15).onTapGesture {
                print("Falta implementar estar parte")
            }
            
            Spacer()
            
            ZStack{
                Circle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).tint(Color.red).foregroundColor(Color.green)
                Circle().frame(width: 65, height: 65).foregroundColor(Color.cyan)
                Image(systemName: "shuffle").background(Color.red)
            }.padding(15).onTapGesture {
                print("Lanzar un intent para inicialiar la llamada")
            }
            
        }
    }
}

#Preview {
    PantallaAgenda()
}
