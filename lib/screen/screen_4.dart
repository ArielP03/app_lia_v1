import 'package:flutter/material.dart';

// ignore: camel_case_types
class Screen_4 extends StatelessWidget {
  const Screen_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asientos Registrales')),
      body:Padding(
        padding: const EdgeInsets.only(left:15,right:10,top:10 ),
        child: Column(
          children: [
            const Center(
              child: Text(
                ' -	De presentación: Es cuando se presenta por primera vez el título.\n -	De Inscripción: Es un asiento principal. Se describe la finca, los derechos que recaen sobre esta, los derechos de los propietarios, el número de la finca, la fecha, la hora, los aranceles y las generales del titular. \n -	De cancelación: Es el único asiente negativo del registro, y es el único facultado para dar muerte a los otros asientos del registro.\n -	 Anotaciones preventivas: Está ligada a la prohibición de disponer y vinculada con la publicidad. Son principales y positivas. \n -	Notas Marginales: se ponen al margen del asiento principal y en ella se ponen las modificaciones que se le hacen a la finca.',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}