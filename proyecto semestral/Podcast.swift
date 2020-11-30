//
//  Podcast.swift
//  proyecto semestral
//
//  Created by Alumno on 11/28/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
class Podcast {
    var titulo : String
    var genero : String
    var episodios : String
    var imagenPodcast: String
    var autores : String
    var seguidores : String
    var estrellas : String
    var reproducciones : String
    var descripcion : String
    
    init(titulo: String, genero: String, episodios: String, imagenPodcast: String, autores: String, seguidores: String, estrellas: String, reproducciones: String, descripcion: String) {
        self.episodios = episodios
        self.genero = genero
        self.titulo = titulo
        self.imagenPodcast = imagenPodcast
        self.autores = autores
        self.seguidores = seguidores
        self.estrellas = estrellas
        self.reproducciones = reproducciones
        self.descripcion = descripcion
    }
}
