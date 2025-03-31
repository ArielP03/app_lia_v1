import 'package:flutter/material.dart';

// ignore: camel_case_types
class Screen_3 extends StatelessWidget {
  const Screen_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Procedimientos Inmatriculadores')),
      body: Padding(
        padding: const EdgeInsets.only(left:15,right:10,top:10 ),
        child: Column(
          children: [
            const Center(
              child: Text(
                ' 1.	El Expediente de Dominio. \n 2.	La inscripción en virtud de los títulos públicos complementados con un acta de notoriedad. \n 3.	La inmatriculación en virtud de certificaciones expedidas por entidades de derecho público.',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}