import 'package:flutter/material.dart';

// ignore: camel_case_types
class Screen_2 extends StatelessWidget {
  const Screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principios Registrales'),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15,right: 10,bottom: 40),
          child: Column(
            spacing: 10.0,
            children: [
              Center(
                child: Text(
                  'Los principios registrales son notas características o rasgos básicos que debe tener un sistema registral; no son verdades absolutas, no son taxativamente establecidos en la norma, son generalizaciones doctrinales que se hacen del procedimiento registral, informan la organización del registro y sus efectos, determinan el alcance de la publicidad inmobiliaria, no son principios del derecho, no son los fines del derecho registral, no son los principios filosóficos y se clasifican atendiendo a si operan con anterioridad, simultáneamente o con posterioridad a la inscripción.',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              
              Center(
                child: Text(
                  'Principios Previos a la Inscripción:',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
          
              Center(
                child: Text(
                  'Principio de Rogación:\n - Es la petición al registrador.\n - El procedimiento registral se inicia mediante la presentación de un título formal en el registro y la solicitud del presentante para que practique la inscripción. (la inscripción se realiza a instancia de parte interesada).\n - Es una declaración de voluntad no negocial, unilateral y recepticia.\n - No tiene carácter formal.\n - Presume la presentación de documentos.\n - La ejecuta a quien la ley faculta.\n - De oficio lo que resta y algunas excepciones legales.',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
          
            Center(
                child: Text(
                  '1. Principio de Legalidad o Calificación:\n - El registrador al calificar es un controlador de la legalidad y salvaguarda la seguridad jurídica.\n - Calificar es emitir un juicio de legalidad sobre las formas intrínsecas (relativas a la procedencia del contenido del título domínico) y las formas extrínsecas (requisitos formales del instrumento en sí).\n - Plazo para calificar: 15 días (plazo excepcional: 30 días)\n - Efectos de la calificación: Extender, Suspender o Denegar.(Ninguno de estos efectos declara la nulidad o validez del título, solo ello le es dable al juez.)\n *Si la calificación es favorable se practica el asiento de inscripción. *Si es desfavorable se suspende (inscripción provisional) o deniega.\n - Recursos contra la decisión del Registrador: Queja (30 días); Alzada (20 días); Judicial (30 días).',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  'Principios Simultáneos a la Inscripción:',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Center(
                child: Text(
                  '1. Principio de Prioridad:\n - El título que primero accede al registro será preferido respecto de los incompatibles que lo hagan con posterioridad. (Primero en tiempo, primero en Derecho).\n \n 2. Principio de Especialidad:\n - Solo pueden ser publicados derechos individualizados en su contenido y titularidad y especificados sobre una finca.\n - Exige la perfecta concreción del derecho que se inscribe, la finca sobre la que recae y la persona de su titular\n \n 3. Principio de Inscripción:\n - En el aspecto formal: equivale a la constatación de un título, acto, hecho o circunstancia en el Registro.\n - En el aspecto material: es la acción que da lugar a un documento público que refleja situaciones jurídicas inmobiliarias, y que produce los efectos presuntivos, defensivos y legitimadores propios del Registro.\n -Efectos:\n Inscripción declarativa: Se limita a manifestar un cambio real. La mutación jurídico-real inmobiliaria opera al margen del Registro, mediante el título y el modo, sin que la inscripción tenga trascendencia real.\n Inscripción constitutiva: Constituye el derecho cuya existencia se publica. Es un elemento necesario para la existencia del derecho, que, sin ella, no llega a surgir.\n Inscripción obligatoria: Cuando la ley establece, un deber impuesto, cuyo incumplimiento no ejerce efecto alguno sobre el nacimiento, ni la eficacia del acto en cuestión, sino otras consecuencias jurídicas que se derivan del incumplimiento de dicha obligación. \n - Sistemas de Inscripción: Transcripción; Inscripción; Encasillado.\n \n 4. Principio de Tracto Registral:\n - Para la inscripción de un derecho, es necesario que conste previamente inscrito el derecho del transmitente.\n - Se fundamenta en la seguridad jurídica\n - Es consecuencia del principio de legitimación\n - Evita que el titular registral pueda ser privado de sus derechos sin su consentimiento o sin haber sido oído.\n - Manifestaciones:\n  • Tracto sucesivo material: Cada asiento se refiere a un titular.\n  • Tracto sucesivo formal: Cada acto da lugar a un asiento.\n Tracto sucesivo abreviado: Un mismo asiento recoge varias transmisiones.',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  'Principios Posteriores al Registro:',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Center(
                child: Text(
                  '1. Principio de Legitimación:\n - Una vez practicada la inscripción aparece un principio de presunción “iuris tamtun” a favor de la misma que significa exactitud y veracidad de lo inscrito.\n - Finalidad: Agilización del tráfico jurídico.\n - Se presume que el dominio o los derechos reales inmobiliarios inscritos en el Registro existen y pertenecen al titular registral en la forma determinada por el asiento respectivo, presumiéndose también que tiene la posesión de los mismos hasta que se demuestre lo contrario.  \n \n  2. Principio de Fe Pública Registral:\n - Junto a la presunción de legitimación aparece otra de carácter “iuris et de iure”, de inatacabilidad e irreivindicabilidad de la adquisición efectuada por un tercero con los requisitos marcados por la ley.\n - El que adquiere un derecho confiado en los pronunciamientos del registro será mantenido en su adquisición, aunque después se anule o resuelva el derecho de su transmitente, siempre que reúna las condiciones exigidas por la ley.',
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