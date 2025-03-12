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
                .fill(Color("Accent"))
                .frame(width: 350)
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, Color("Accent"), .black]), startPoint: .top, endPoint: .bottom))
                .frame(width: 240)
            Image("Kalaca")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, alignment: .center)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        }
        VStack{
            Text(contacto_a_molestar.nombre)
            Text(contacto_a_molestar.telefono)

            
            ZStack{
                Circle()
                    .fill(Color("Error Container"))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).tint(Color.red)
                    .foregroundColor(Color.green)
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color("Error Container"))
                Image(systemName: "phone.down.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                    .foregroundColor(Color("Error"))
            }.padding(15).onTapGesture {
                print("Finalizar llamada")
            }
            
        }
        .foregroundColor(Color("On Surface"))
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
