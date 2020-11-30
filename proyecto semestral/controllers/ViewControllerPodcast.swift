//
//  ViewControllerPodcast.swift
//  proyecto semestral
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewControllerPodcast: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var podcast: [Podcast] = []
    
    @IBOutlet weak var tvPodcasts: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPodcastController
        destino.podcast = podcast[tvPodcasts.indexPathForSelectedRow!.row]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 176
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcast.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaPodcast") as! CeldaPodcastController
        
        celda.lblEpisodios.text = podcast[indexPath.row].episodios
        celda.lblTitulo.text = podcast[indexPath.row].titulo
        celda.lblGenero.text = podcast[indexPath.row].genero
        celda.imgFondoPodcast.image = UIImage(named: podcast[indexPath.row].imagenPodcast)
        celda.CeldaPodcast.layer.cornerRadius = 10
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        podcast.append(Podcast(titulo: "HablemosArte", genero: "Arte", episodios: "42 episodios", imagenPodcast: "HablemosArte", autores: "Roberta Villarreal", seguidores: "923 seguidores", estrellas: "3 estrellas", reproducciones: "1274 reproducciones", descripcion: "Un espacio dedicado a hacer que hablar de arte sea algo comun y no solamente del experto"))
        podcast.append(Podcast(titulo: "La Cotorrisa", genero: "Comedia", episodios: "13 episodios", imagenPodcast: "LaCotorrisa", autores: "La cotorrisa podcast", seguidores: "478 seguidores", estrellas: "4 estrellas", reproducciones: "876 reproducciones", descripcion: "cotorreando y grabando xd"))
        podcast.append(Podcast(titulo: "No salgas de casa", genero: "Crímenes reales", episodios: "10 episodios", imagenPodcast: "NoSalgas", autores: "Mariana y Sara", seguidores: "536 seguidores", estrellas: "5 estrellas", reproducciones: "234 reproducciones", descripcion: "Historias de asesinatos, nuevos episodios cada semana"))
        podcast.append(Podcast(titulo: "Se Regalan Dudas", genero: "Sociedad", episodios: "21 episodios", imagenPodcast: "SeRegalanDudas", autores: "Se Regalan Dudas", seguidores: "3232", estrellas: "", reproducciones: "3938 reproducciones", descripcion: "¿porque creemos lo que creemos?, ¿que alternativas hay?, ¿de donde venimos y hacia donde vamos?"))
        podcast.append(Podcast(titulo: "La Radio de la República", genero: "Política", episodios: "38 episodios", imagenPodcast: "LaRadioRepublica", autores: "Chumel Torres", seguidores: "7432 seguidores", estrellas: "3 estrellas", reproducciones: "8373 reproducciones", descripcion: "El noticiero mas importante de Youtube en Latinoamerica"))
        podcast.append(Podcast(titulo: "Esto no es radio", genero: "Sociedad", episodios: "23 episodios", imagenPodcast: "EstoNoEsRadio", autores: "this is not radio", seguidores: "344", estrellas: "3 estrellas", reproducciones: "3875 reproducciones", descripcion: "Relatos de personas que vivieron situaciones limite, recuerdos inmortales y conflictos internos"))
        podcast.append(Podcast(titulo: "Aprende francés", genero: "Idiomas", episodios: "8 episodios", imagenPodcast: "HablarFrances", autores: "LinguaBoost", seguidores: "874 seguidores", estrellas: "4 estrellas", reproducciones: "1002 reproducciones", descripcion: "Curso pa aprender frances oui"))
        podcast.append(Podcast(titulo: "Guerras de Negocios", genero: "Negocios", episodios: "19 episodios", imagenPodcast: "GuerraNegocios", autores: "Wondery", seguidores: "345", estrellas: "5 estrellas", reproducciones: "701 reproducciones", descripcion: "A veces el premio es tu billetera; otras, tu atencion, y en ocasiones el placer de vencer al otro"))
        podcast.append(Podcast(titulo: "El Chapo", genero: "Historia", episodios: "15 episodios", imagenPodcast: "Chapo", autores: "VICE", seguidores: "6529 seguidores", estrellas: "5 estrellas", reproducciones: "2552 reproducciones", descripcion: "Las historias del chapo que mas han impactado"))
        podcast.append(Podcast(titulo: "Cine y Alcohol", genero: "Cine", episodios: "32 episodios", imagenPodcast: "CineyAlcohol", autores: "Juan Jose", seguidores: "637 seguidores", estrellas: "5 estrellas", reproducciones: "7980 reproducciones", descripcion: "Hablando entre copas sobre cine, tv y cultura pop"))
    }
    
    
}
