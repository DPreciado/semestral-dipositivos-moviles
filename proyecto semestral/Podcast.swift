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
    
    init(titulo: String, genero: String, episodios: String, imagenPodcast: String) {
        self.episodios = episodios
        self.genero = genero
        self.titulo = titulo
        self.imagenPodcast = imagenPodcast
        
    }
}
