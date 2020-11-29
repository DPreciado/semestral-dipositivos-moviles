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
        podcast.append(Podcast(titulo: "La cabra", genero: "Genero: Mujeres", episodios: "Episodios: 2", imagenPodcast: "PodcastLaCabra"))
    }
    
    
}
