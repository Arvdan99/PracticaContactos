//
//  EditarContactoController.swift
//  PracticaContactos
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EditarContactoController: UIViewController{
    
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtTelefono: UITextField!
    
    var Contactos : Contacto?
    var CallBackActualizar : (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Contactos != nil {
            
            txtNombre.text = Contactos!.Nombre
            txtTelefono.text = Contactos!.Numero
        }
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if CallBackActualizar != nil {
            
            Contactos?.Nombre = txtNombre.text!
            Contactos?.Numero = txtTelefono.text!
            CallBackActualizar!()
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
}
