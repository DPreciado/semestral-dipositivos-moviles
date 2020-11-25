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
        return 79
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musica.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMusica") as! CeldaMusicaController
        
        celda.imgCancion.image = UIImage(named: musica[indexPath.row].imagen)
        celda.lblTitulo.text = musica[indexPath.row].titulo
        celda.lblArtista.text = musica[indexPath.row].artista
        celda.lblDuracion.text = musica[indexPath.row].duracion
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musica.append(Musica(titulo: "Hacer el amor con otro", genero: "Latin", artista: "Alejandra Guzman", album: "Flor de papel", duracion: "4:43", imagen: "1"))
        musica.append(Musica(titulo: "Walk", genero: "Heavy metal", artista: "Pantera", album: "Vulgar Display of Power", duracion: "5:05", imagen: "2"))
        musica.append(Musica(titulo: "Kobe En LA", genero: "Pop", artista: "Jhay Cortez", album: "Kobe En LA", duracion: "6:32", imagen: "3"))
        musica.append(Musica(titulo: "Tusa", genero: "Pop", artista: "Nicki Minaj", album: "Tusa", duracion: "3:23", imagen: "4"))
        musica.append(Musica(titulo: "El cocaino", genero: "Banda", artista: "Los Buitres De Culiacan Sinaloa", album: "En Vivo Desde Tijuana los Buitrones y los Firmes", duracion: "2:37", imagen: "5"))
    }


}

