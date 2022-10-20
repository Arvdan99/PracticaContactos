//
//  ContactosController.swift
//  PracticaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class AlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {

@IBOutlet weak var tvAlumnos: UITableView!
    
var Nombre : [Nombre] = []
var Telefono : [Contacto] = []

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
    return Alumnos.count
}

//Construye cada celda
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
    celda?.lblNombre.text = Alumnos[indexPath.row].nombre
    celda?.lblMatricula.text = Alumnos[indexPath.row].matricula
    celda?.lblCarrera.text = Alumnos[indexPath.row].carrera
    celda?.lblEdad.text = Alumnos[indexPath.row].edad
    return celda!
}

