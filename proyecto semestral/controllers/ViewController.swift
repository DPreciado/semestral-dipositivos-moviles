//
//  ViewController.swift
//  proyecto semestral
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var musica : [Musica] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 167
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musica.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMusica") as! CeldaMusicaController
        
        celda.lblTitulo.text = musica[indexPath.row].titulo
        celda.lbAutor.text = musica[indexPath.row].autor
        celda.lblDuracion.text = musica[indexPath.row].duracion
        celda.imagenFondo.image = UIImage(named: musica[indexPath.row].imagen)
        celda.viewContenedorMusica.layer.cornerRadius = 10
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musica.append(Musica(titulo: "Viejitas pero bonitas", autor: "Spotify", duracion: "6hrs 3 min", imagen: "PlaylistViejitas"))
        musica.append(Musica(titulo: "Disney Hits", autor: "Spotify", duracion: "4hrs 42 min", imagen: "PlaylistDisney"))
        musica.append(Musica(titulo: "Night Rider", autor: "Spotify", duracion: "3hrs 2 min", imagen: "PlaylistNight"))
        musica.append(Musica(titulo: "Latin Grammy Awards", autor: "Dezzer", duracion: "1hr 55 min", imagen: "Latin"))
        musica.append(Musica(titulo: "Pa' Pistear", autor: "Dezzer", duracion: "4hrs 14 min", imagen: "paPistear"))
        musica.append(Musica(titulo: "Canta en la Ducha", autor: "David", duracion: "1hr 22 min", imagen: "cantarDucha"))
        musica.append(Musica(titulo: "TRAPPERZ", autor: "David", duracion: "2hrs 7 min", imagen: "trapperz"))
        musica.append(Musica(titulo: "Metal Essentials", autor: "Spotify", duracion: "5hrs 43 min", imagen: "metal"))
        musica.append(Musica(titulo: "Mal de Amores", autor: "Dezzer", duracion: "3hrs 37 min", imagen: "malDeAmores"))
        musica.append(Musica(titulo: "Concentración Perfecta", autor: "Spotify", duracion: "2hrs 3 min", imagen: "concentracion"))
    }


}

