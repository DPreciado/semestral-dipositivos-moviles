//
//  DetallesEventoController.swift
//  proyecto semestral
//
//  Created by Alumno on 11/28/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesEventoController: UIViewController{
    @IBOutlet weak var imagenFondo: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblReproducciones: UILabel!
    @IBOutlet weak var lblSeguidores: UILabel!
    @IBOutlet weak var lblEstrellas: UILabel!
    @IBOutlet weak var lblEstado: UILabel!
    @IBOutlet weak var txtDescripcion: UILabel!
    
    var musica: Musica?
    
    override func viewDidLoad() {
        if musica != nil{
            imagenFondo.image = UIImage(named: musica!.imagen)
            lblTitulo.text = musica?.titulo
            lblReproducciones.text = musica?.reproducciones
            txtDescripcion.text = musica?.descripcion
            lblSeguidores.text = musica?.seguidores
            lblEstrellas.text = musica?.estrellas
            lblEstado.text = musica?.estado
            self.title = musica?.titulo
        }
    }
}
