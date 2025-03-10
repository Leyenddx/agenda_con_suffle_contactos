//
//  contacto_agenda.swift
//  Agenda_shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct ContactoAgenda: Identifiable {
    var nombre: String
    var telefono: String
    
    var imagen: String = "imagen"
    
    var id: String { nombre }
}




/*
var nombre = "Elvio Lado"

var _nombre: String

var nombre: set{
    let nombre_validado = filtrar_palabras(value)
            _nombre = nombre_validado
} get {
    return _nombre.split(" ")[0]
}*/


