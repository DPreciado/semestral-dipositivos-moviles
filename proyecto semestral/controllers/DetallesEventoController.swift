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
    @IBOutlet weak var lblAutor: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var txtvDescripcion: UITextView!
    @IBOutlet weak var lblEstado: UILabel!
    @IBOutlet weak var lblReproducciones: UILabel!
    
    
    var musica: Musica?
    
    override func viewDidLoad() {
        if musica != nil{
            imagenFondo.image = UIImage(named: musica!.imagen)
            lblTitulo.text = musica?.titulo
            lblAutor.text = musica?.autor
            lblDuracion.text = musica?.duracion
            lblEstado.text = musica?.estado
            lblReproducciones.text = musica?.reproducciones
            txtvDescripcion.text = musica?.descripcion
        }
    }
}
