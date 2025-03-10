//
//  pantalla_del_ganador.swift
//  Agenda_shuffle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Fuckensio", telefono: "656 265 673")

struct pantalla_del_ganador: View {
    
    
    var contacto_a_molestar: ContactoAgenda
    let esquinas_redondeadas = CGSize(width: 25, height: 25)
    
    var body: some View {
        ZStack{
            Circle()
                .fill(.green)
                .frame(width: 350)
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, .green, .black]), startPoint: .top, endPoint: .bottom))
                .frame(width: 240)
            Image("Kalaca")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, alignment: .center)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        }
        Text(contacto_a_molestar.nombre)
        Text(contacto_a_molestar.telefono)
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
