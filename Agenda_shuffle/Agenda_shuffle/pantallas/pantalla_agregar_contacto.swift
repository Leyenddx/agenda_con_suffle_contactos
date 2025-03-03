//
//  pantalla_agregar_contacto.swift
//  Agenda_shuffle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonicio: String = ""
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
        ZStack{
            Rectangle().frame(maxWidth: .infinity, maxHeight: 75).foregroundColor(Color.cyan)
            TextField("Placeholder", text: $nombre).padding(10)
        }
        
        
        Text("Colocar el campo de numero telefonico")
        TextField("Placeholder numeros", text: $numero_telefonicio).frame(height: 35).padding(10)
        
        HStack{
            Icono(tamano: 65, ruta_icono: "person.crop.circle.badge.plus")
            Spacer()
            Icono(tamano: 65, ruta_icono: "arrowshape.backward.circle").background(nombre == "" ? Color.red: Color.cyan)

        }.background(Color.cyan)
    }
}

#Preview {
    PantallaAgregarContacto()
}
