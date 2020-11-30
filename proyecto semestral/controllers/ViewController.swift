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
        musica.append(Musica(titulo: "Viejitas pero bonitas", autor: "Spotify", duracion: "6hrs 3 min", imagen: "PlaylistViejitas", estrellas: "4 estrellas", seguidores: "152 seguidores", reproducciones: "1425 reproducciones", descripcion: "Playlist para recordar aquellas canciones que por mas viejas que sean siguen siendo buenas hasta la actualidad",  estado: "Publica"))
        musica.append(Musica(titulo: "Disney Hits", autor: "Spotify", duracion: "4hrs 42 min", imagen: "PlaylistDisney", estrellas: "5 estrellas", seguidores: "13863 seguidores", reproducciones: "97812 reproducciones", descripcion: "Las mejores canciones de Disney que no puedes dejar de cantar, todas disponibles", estado: "Publica"))
        musica.append(Musica(titulo: "Night Rider", autor: "Spotify", duracion: "3hrs 2 min", imagen: "PlaylistNight", estrellas: "4 estrellas", seguidores: "2728 seguidores", reproducciones: "8217", descripcion: "El estilo que te falta aqui está c;", estado: "Publica"))
        musica.append(Musica(titulo: "Latin Grammy Awards", autor: "El David jeje", duracion: "1hr 55 min", imagen: "Latin", estrellas: "3 estrellas", seguidores: "57 seguidores", reproducciones: "128 reproducciones", descripcion: "5mentarios", estado: "Privada"))
        musica.append(Musica(titulo: "Pa' Pistear", autor: "Dezzer", duracion: "4hrs 14 min", imagen: "paPistear", estrellas: "5 estrellas", seguidores: "9282 seguidores", reproducciones: "2783", descripcion: "EAEA Que nunca te falte la musica, saca las guamas, chetos y esta playlist :D", estado: "Publica"))
        musica.append(Musica(titulo: "Canta en la Ducha", autor: "David", duracion: "1hr 22 min", imagen: "cantarDucha", estrellas: "2 estrellas", seguidores: "4 seguidores", reproducciones: "192 reproducciones", descripcion: "Pa cantar en la ducha jeje", estado: "Privada"))
        musica.append(Musica(titulo: "TRAPPERZ", autor: "David", duracion: "2hrs 7 min", imagen: "trapperz", estrellas: "3 estrellas", seguidores: "1235 seguidores", reproducciones: "8923 reproducciones", descripcion: "Para trapear xd", estado: "Privada"))
        musica.append(Musica(titulo: "Metal Essentials", autor: "Spotify", duracion: "5hrs 43 min", imagen: "metal", estrellas: "2 estrellas", seguidores: "2178 seguidores", reproducciones: "8419 reproducciones", descripcion: "Solo para los mas mamadisimos, metaleros, greñudos, hardcore y apestosos, jaja ya bañense", estado: "Publica"))
        musica.append(Musica(titulo: "Mal de Amores", autor: "Dezzer", duracion: "3hrs 37 min", imagen: "malDeAmores", estrellas: "4 estrellas", seguidores: "298 seguidores" ,reproducciones: "2897 reproducciones", descripcion: "No la necesitas bro, todo estará bien, mejor saca unas chelas y pon la playlist pa pistear", estado: "Publica"))
        musica.append(Musica(titulo: "Concentración Perfecta", autor: "Spotify", duracion: "2hrs 3 min", imagen: "concentracion", estrellas: "3 estrellas", seguidores: "2129 seguidores", reproducciones: "62781 reproducciones", descripcion: "Si no sacas 10 con esta playlist nada te hará sacarlo, intentalo c;", estado: "Publica"))
    }


}

