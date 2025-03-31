import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'results.dart'; // Importamos la pantalla para mostrar los datos

class FormularioPage extends StatefulWidget {
  const FormularioPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _mensajeController = TextEditingController();
final TextEditingController _naturalezaController = TextEditingController();
 final TextEditingController _ubicacionController = TextEditingController();
  final TextEditingController _usoController = TextEditingController();
  final TextEditingController _medidasController = TextEditingController();
 final TextEditingController _superficieController = TextEditingController();
 final TextEditingController _partesController = TextEditingController();
 final TextEditingController _precioController = TextEditingController();
 final TextEditingController _naturaleza2Controller = TextEditingController();
final TextEditingController _cargasController = TextEditingController();
final TextEditingController _titularesController = TextEditingController();
final TextEditingController _tituloRController = TextEditingController();
final TextEditingController _efectividadController = TextEditingController();
final TextEditingController _tarifaController = TextEditingController();



  Future<void> _guardarFormulario() async {
    final datos = {
      "nombre": _nombreController.text,
      "email": _emailController.text,
      "telefono": _telefonoController.text,
      "mensaje": _mensajeController.text,
      "naturaleza": _naturalezaController.text,
      "ubicacion": _ubicacionController.text,
       "uso": _usoController.text,
       "medidas": _medidasController.text,
       "superficie": _superficieController.text,
       "partes": _partesController.text,
       "precio": _precioController.text,
       "naturaleza2": _naturaleza2Controller.text,
       "cargas": _cargasController.text,
        "titulares": _titularesController.text,
         "titulo": _tituloRController.text,
        "efectividad":_efectividadController.text,
        "tarifa":_tarifaController.text,
    };

    final directorio = await getApplicationDocumentsDirectory();
    final archivo = File('${directorio.path}/formulario.json');
    await archivo.writeAsString(jsonEncode(datos));

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Formulario guardado correctamente")),
    );

    // Opcional: limpiar los campos después de guardar
    _nombreController.clear();
    _emailController.clear();
    _telefonoController.clear();
    _mensajeController.clear();
    _naturalezaController.clear();
    _ubicacionController.clear();
    _usoController.clear();
     _medidasController.clear();
     _superficieController.clear();
     _partesController.clear();
     _precioController.clear();
     _naturaleza2Controller.clear();
      _cargasController.clear();
      _titularesController.clear();
      _tituloRController.clear();
_efectividadController.clear();
_tarifaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Plataforma Estudiantil")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Certifico',textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
               SizedBox(height: 5),
              TextField(
                controller: _nombreController,
                decoration: InputDecoration(labelText: "Nombre"),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Tomo"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _telefonoController,
                decoration: InputDecoration(labelText: "Folio"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _mensajeController,
                decoration: InputDecoration(labelText: "Finca"),
          
              ),
              SizedBox(height: 5),
              Text('Inmueble',textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
               SizedBox(height: 5),
              TextField(
                controller: _naturalezaController,
                decoration: InputDecoration(labelText: "Naturaleza"),
          
              ),
              TextField(
                controller: _ubicacionController,
                decoration: InputDecoration(labelText: "Ubicacion"),
                maxLines: 2,
          
              ),
              TextField(
                controller: _usoController,
                decoration: InputDecoration(labelText: "Uso destinado"),
                maxLines: 3,
          
              ),
            TextField(
                controller: _medidasController,
                decoration: InputDecoration(labelText: "Medidas y linderos"),
                maxLines: 3,
          
              ),
              TextField(
                controller: _superficieController,
                decoration: InputDecoration(labelText: "Superficie util y Construida en metros"),
          keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _partesController,
                decoration: InputDecoration(labelText: "Partes que la integran"),
              ),
               TextField(
                controller: _precioController,
                decoration: InputDecoration(labelText: "Precio Legal"),
              ),
              SizedBox(height: 20),
              Text('Derecho',textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
              TextField(
                controller: _naturaleza2Controller,
                decoration: InputDecoration(labelText: "Naturaleza"),
              ),
              TextField(
                controller: _cargasController,
                decoration: InputDecoration(labelText: "Cargas o Limitaciones"),
              ),
              TextField(
                controller: _titularesController,
                decoration: InputDecoration(labelText: "Titulares"),
              ),
               TextField(
                controller: _tituloRController,
                decoration: InputDecoration(labelText: "Titulo Resolucion"),
              ),
              TextField(
                controller: _efectividadController,
                decoration: InputDecoration(labelText: "Efectividad de la Inscripcion"),
              ),
              TextField(
                controller: _tarifaController,
                decoration: InputDecoration(labelText: "Tarifa"),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _guardarFormulario,
                child: Text("Guardar"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MostrarFormulario()),
                  );
                },
                child: Text("Ver Formulario Guardado"),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}