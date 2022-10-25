//
//  ContactosController.swift
//  PracticaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tvContactos: UITableView!
    //@IBOutlet weak var tvAlumnos: UITableView!

    var Contactos : [Contacto] = []
    
//Altura de celda
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
}
//Nùmero de secciones que tiene mi table view
func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

//Numero de filas por seccion
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Contactos.count
}

//Construye cada celda
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContactos") as? CeldaContactoController
    celda?.lblNombre.text = Contactos[indexPath.row].Nombre
    celda?.lblTelefono.text = Contactos[indexPath.row].Numero
    return celda!
}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        Contactos.append(Contacto(Nombre: "Max Rivera", Numero: "6442011638"))
        Contactos.append(Contacto(Nombre: "Cesar E", Numero: "6442011785"))
        
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //   let destino = segue.destination as! DetallesAlumnoController
    // destino.alumno = Alumnos[tvAlumnos.indexPathForSelectedRow!.row]
    //}
    
}
