//
//  DetallesPodcastController.swift
//  proyecto semestral
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesPodcastController : UIViewController {
    @IBOutlet weak var imgFondoPodcast: UIImageView!
    @IBOutlet weak var lblAutores: UILabel!
    @IBOutlet weak var lblSeguidores: UILabel!
    @IBOutlet weak var lblEstrellas: UILabel!
    @IBOutlet weak var lblReproducciones: UILabel!
    @IBOutlet weak var txtDescripcion: UITextView!
    
    var podcast: Podcast?
    
    override func viewDidLoad() {
        if podcast != nil{
            imgFondoPodcast.image = UIImage(named: podcast!.imagenPodcast)
            lblAutores.text = podcast?.autores
            lblReproducciones.text = podcast?.reproducciones
            txtDescripcion.text = podcast?.descripcion
            lblSeguidores.text = podcast?.seguidores
            lblEstrellas.text = podcast?.estrellas
            self.title = podcast?.titulo
        }
    }
}
