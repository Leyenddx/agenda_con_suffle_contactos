//
//  PantallaAgenda.swift
//  Agenda_shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI


enum PantallasDisponibles: String, Identifiable{
    case pantalla_agregar, pantalla_aleatorio
    
    var id: String { rawValue }
}

struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),
        ContactoAgenda(nombre:"Osvaldo", telefono: "(656) 123 455"),

    ]
    
    @State var pantalla_a_mostrar: PantallasDisponibles?
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 10) {
                    ForEach(contactos_actuales){ contacto in
                        NavigationLink{
                            Text("Hola mundo")
                        } label: {
                            ContactoPrevista(contacto_a_mostrar: contacto)
                        }
                    }
                }
                .frame(alignment: Alignment/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(10)
            }
            .background((LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom)))
        }
        
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.white, .green, .black]), startPoint: .top, endPoint: .bottom)).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).tint(Color.red).foregroundColor(Color.green)
                
                Circle().frame(width: 65, height: 65).foregroundColor(Color.green)
                
                Image(systemName: "plus").resizable().aspectRatio(contentMode: .fit).frame(width: 30).foregroundColor(.white)
            
            }.padding(15).onTapGesture {
                print("Falta implementar la seccion de agregar contacto")
                pantalla_a_mostrar = .pantalla_agregar
            }
            
            Spacer()
            
            ZStack{
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.white, .green, .black]), startPoint: .top, endPoint: .bottom)).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).tint(Color.red).foregroundColor(Color.green)
                Circle().frame(width: 65, height: 65).foregroundColor(Color.green)
                Image(systemName: "shuffle").foregroundColor(.white)
            }.padding(15).onTapGesture {
                print("Lanzar un intent para inicialiar la llamada")
            }
        }.background(Color.yellow)
            .sheet(isPresented: $mostrar_pantalla_agregar_contacto){
            
        }.sheet(item: $pantalla_a_mostrar){
            pantalla in switch(pantalla){
            case .pantalla_agregar:
                PantallaAgregarContacto(
                    boton_salir: {
                        pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
                },
                boton_agregar: { nombre, numero in
                        let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                    contactos_actuales.append(contacto_nuevo)
                    pantalla_a_mostrar = nil
                })
            case .pantalla_aleatorio:
                Text("Adios mundo")
            }
        }
    }
}

#Preview {
    PantallaAgenda()
}
