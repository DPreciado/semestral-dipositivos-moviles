//
//  ViewController.swift
//  proyecto semestral
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tvPlaylists: UITableView!
    
    var musica : [Musica] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesEventoController
        destino.musica = musica[tvPlaylists.indexPathForSelectedRow!.row]
    }
    
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
        musica.append(Musica(titulo: "Viejitas pero bonitas", autor: "Spotify", duracion: "6hrs 3 min", imagen: "PlaylistViejitas", estado: "Publica", reproducciones: "Reproducciones - 1425", descripcion: "Playlist para recordar aquellas canciones que por mas viejas que sean siguen siendo buenas hasta la actualidad"))
        musica.append(Musica(titulo: "Disney Hits", autor: "Spotify", duracion: "4hrs 42 min", imagen: "PlaylistDisney", estado: "Publica", reproducciones: "Reproducciones - 4568", descripcion: "Las mejores canciones de Disney que no puedes dejar de cantar, todas disponibles"))
        musica.append(Musica(titulo: "Night Rider", autor: "Spotify", duracion: "3hrs 2 min", imagen: "PlaylistNight", estado: "Publica", reproducciones: "Reproducciones - 7451", descripcion: "El estilo que te falta aqui está c;"))
        musica.append(Musica(titulo: "Latin Grammy Awards", autor: "Deni", duracion: "1hr 55 min", imagen: "Latin", estado: "Privada", reproducciones: "Reproducciones - 2225", descripcion: "5mentarios"))
        musica.append(Musica(titulo: "Pa' Pistear", autor: "Dezzer", duracion: "4hrs 14 min", imagen: "paPistear", estado: "Publica", reproducciones: "Reproducciones - 4561", descripcion: "EAEA Que nunca te falte la musica, saca las guamas, chetos y esta playlist :D"))
        musica.append(Musica(titulo: "Canta en la Ducha", autor: "David", duracion: "1hr 22 min", imagen: "cantarDucha", estado: "Privada", reproducciones: "Reproducciones - 9843", descripcion: "Pa cantar en la ducha jeje"))
        musica.append(Musica(titulo: "TRAPPERZ", autor: "David", duracion: "2hrs 7 min", imagen: "trapperz", estado: "Privada", reproducciones: "Reproducciones - 1235", descripcion: "Para trapear xd"))
        musica.append(Musica(titulo: "Metal Essentials", autor: "Spotify", duracion: "5hrs 43 min", imagen: "metal", estado: "Publica", reproducciones: "Reproducciones - 8419", descripcion: "Solo para los mas mamadisimos, metaleros, greñudos, hardcore y apestosos, jaja ya bañense"))
        musica.append(Musica(titulo: "Mal de Amores", autor: "Dezzer", duracion: "3hrs 37 min", imagen: "malDeAmores", estado: "Publica", reproducciones: "Reproducciones - 5288", descripcion: "No la necesitas bro, todo estará bien, mejor saca unas chelas y pon la playlist pa pistear"))
        musica.append(Musica(titulo: "Concentración Perfecta", autor: "Spotify", duracion: "2hrs 3 min", imagen: "concentracion", estado: "Publica", reproducciones: "Reproducciones - 5825", descripcion: "Si no sacas 10 con esta playlist nada te hará sacarlo, intentalo c;"))
    }


}

