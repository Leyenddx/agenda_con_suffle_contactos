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
]


struct PantallaAgenda: View {
    var body: some View {
        List{
            VStack {
                ForEach(contactos){ contacto in
                    Text("\(contacto.nombre)")
                    ContactoPrevista()
                }
            }
            .background(Color.cyan)
        }
    }
}



#Preview {
    PantallaAgenda()
}
