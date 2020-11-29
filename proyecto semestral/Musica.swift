//
//  Musica.swift
//  proyecto semestral
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Musica{
    var titulo: String
    var autor: String
    var duracion: String
    var imagen : String
    var estado : String
    var reproducciones : String
    var descripcion : String
    
    init(titulo:String, autor:String, duracion:String, imagen:String, estado:String, reproducciones: String, descripcion: String){
        self.titulo = titulo
        self.autor = autor
        self.duracion = duracion
        self.imagen = imagen
        self.estado = estado
        self.reproducciones = reproducciones
        self.descripcion = descripcion
    }
}



