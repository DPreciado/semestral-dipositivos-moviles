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
    var estrellas : String
    var seguidores : String
    var reproducciones : String
    var descripcion : String
    var estado : String
    
    init(titulo:String, autor:String, duracion:String, imagen:String, estrellas:String, seguidores:String, reproducciones: String, descripcion: String, estado: String){
        self.titulo = titulo
        self.autor = autor
        self.duracion = duracion
        self.imagen = imagen
        self.estrellas = estrellas
        self.seguidores = seguidores
        self.reproducciones = reproducciones
        self.descripcion = descripcion
        self.estado = estado
    }
}



