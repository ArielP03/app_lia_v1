import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class MostrarFormulario extends StatefulWidget {
  const MostrarFormulario({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MostrarFormularioState createState() => _MostrarFormularioState();
}

class _MostrarFormularioState extends State<MostrarFormulario> {
  Map<String, dynamic> datos = {};

  @override
  void initState() {
    super.initState();
    _cargarDatos();
  }

  Future<void> _cargarDatos() async {
    final directorio = await getApplicationDocumentsDirectory();
    final archivo = File('${directorio.path}/formulario.json');

    if (await archivo.exists()) {
      final contenido = await archivo.readAsString();
      setState(() {
        datos = jsonDecode(contenido);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Datos del Formulario")),
      body: datos.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Certifico',style: TextStyle(fontSize: 20)),
                  Text("Registrador: ${datos['nombre']}",style: TextStyle(fontSize: 15)),
                  Text("Tomo: ${datos['email']}, Folio:${datos['telefono']}, consta la Inscripción primera de la Finca: ${datos['mensaje']} cuyo contenido es el siguiente:",style: TextStyle(fontSize: 15)),
                  Text("Inmueble",style: TextStyle(fontSize: 20)),
                  Text("Naturaleza: ${datos['naturaleza']}",style: TextStyle(fontSize: 15)),
                  Text("Ubicacion: ${datos['ubicacion']}",style: TextStyle(fontSize: 15)),
                  Text("Uso al que se le encuentra destinado: ${datos['uso']}",style: TextStyle(fontSize: 15)),
                   Text("Medidas y linderos: ${datos['medidas']}",style: TextStyle(fontSize: 15)),
                   Text("Superficie util y construida en metros: ${datos['superficie']}",style: TextStyle(fontSize: 15)),
                   Text("Partes que lo integran: ${datos['partes']}",style: TextStyle(fontSize: 15)),
                   Text("Precio legal: ${datos['precio']}",style: TextStyle(fontSize: 15)),
                   Text("Derecho",style: TextStyle(fontSize: 20)),
                   Text("Naturaleza: ${datos['naturaleza2']}",style: TextStyle(fontSize: 15)),
                   Text("Cargas o Limitaciones: ${datos['cargas']}",style: TextStyle(fontSize: 15)),
                   Text("Titulares: ${datos['titulares']}",style: TextStyle(fontSize: 15)),
                   Text("Titulo Resolucion: ${datos['titulo']}",style: TextStyle(fontSize: 15)),
                   Text("Efectividad de la Inscripcion: ${datos['efectividad']}",style: TextStyle(fontSize: 15)),
                   Text("Tarifa: ${datos['tarifa']}",style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
    );
  }
}