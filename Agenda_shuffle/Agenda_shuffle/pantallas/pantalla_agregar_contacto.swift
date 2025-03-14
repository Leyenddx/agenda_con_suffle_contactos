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
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    var boton_salir : () -> Void = {
        print("arece que te has equivocado")
    }
    var boton_agregar: (_ nombre: String, _ numero: String) -> Void = 
    {
        nombre, numero in print("Parece que te has equivocado")
    }
    
     var body: some View {
        VStack(spacing: 20) {
            Text("Agregar Contacto")
                .font(.title)
            
            TextField("Nombre", text: $nombre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Teléfono", text: $numero)
                .keyboardType(.phonePad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            if showError {
                Text("¡Completa todos los campos!")
                    .foregroundColor(.red)
            }
            
            HStack {
                CircleButton(icon: "xmark.circle", action: onDismiss)
                Spacer()
                CircleButton(icon: "checkmark.circle", action: {
                    guard !nombre.isEmpty, !numero.isEmpty else {
                        showError = true
                        return
                    }
                    onSave(nombre, numero)
                    onDismiss()
                })
            }.padding()
        }
        .padding()
    }

    
}

#Preview {
    PantallaAgregarContacto()
}
