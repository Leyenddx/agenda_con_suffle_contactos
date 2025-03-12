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
                Image("Contacto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, alignment: .center)
                    .padding(10)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
            }
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10){
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(.black)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.yellow)
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: ContactoAgenda(nombre: "Chuyel nombre mas largo", telefono: "1234567"))
}
