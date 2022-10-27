//
//  NuevoContactoController.swift
//  PracticaContactos
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class NuevoContactoController: UIViewController {
    
    var Contactos : Contacto?
    var CallBackNuevo : ((Contacto) -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtTelefono: UITextField!
    
    override func viewDidLoad() {
    
    }
    
    
    @IBAction func doTapNuevoContacto(_ sender: Any) {
        if CallBackNuevo != nil {
            Contactos = Contacto(Nombre: txtNombre.text ?? "Nombre", Numero: txtTelefono.text ?? "Numero")
            CallBackNuevo!(Contactos!)
            self.navigationController?.popViewController(animated: true)
        }
     }
    
}
    

