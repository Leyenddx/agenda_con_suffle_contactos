//
//  contacto_prevista.swift
//  Agenda_shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct ContactoPrevista: View {
    let esquinas_redondeadas = CGSize(width: 25, height: 25)
    
    var contacto_a_mostrar: ContactoAgenda
    var al_pulsar: () -> Void = {print("No se ha implementado")}
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            
            Spacer()
            
            VStack{
                Image("ImagenContacto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
            }.background(Color.blue)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading) {
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }
            .background(Color.gray)
            .frame(width: 150)
            
            Spacer()
            
        }
        .frame(width: 250)
        .background(Color.red)
        .onTapGesture {
            al_pulsar()
        }
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: ContactoAgenda(nombre: "Chuyel nombre mas largo", telefono: "1234567"))
}
