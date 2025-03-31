import 'package:flutter/material.dart';

// ignore: camel_case_types
class Screen_1 extends StatelessWidget {
  const Screen_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sistema de inscripción'),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:15,right: 10,),
          child: Column(
            spacing: 10,
            children: [
              const Center(
                child: Text(
                  'Sistema Declarativo',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Center(
                child: Text(
                  'El sistema declarativo, tiene su esencia en la autonomía de la voluntad y en la traidito romana (la transmisión del bien por el título y el modo: solo tiene que existir un bien y la forma de trasmitirlo, sin que para ello sea requisito indispensable la inscripción en un registro público).',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  'Sistema Constitutivo',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Center(
                child: Text(
                  'En el sistema constitutivo, la inscripción constituye un requisito “sine qua nom” para la validez del acto.  El paradigma de sistema constitutivo lo constituye el  sistema alemán.',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}