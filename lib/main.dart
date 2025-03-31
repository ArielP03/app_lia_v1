import 'package:app_lia_v1/screen/screen_registrame.dart';
import 'package:flutter/material.dart';
import 'screen/screen_1.dart';
import 'screen/screen_2.dart';
import 'screen/screen_3.dart';
import 'screen/screen_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registrame',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255, 245, 200, 200)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Registrame',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: 
              Padding(
              padding: const EdgeInsets.all(0.0),
              child: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: ()=> Scaffold.of(context).openDrawer(),
                    icon: const Icon(Icons.menu
                    ));
                }
              ),
            ),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       centerTitle: true,
        title: Text(widget.title),
      ),
floatingActionButton: FloatingActionButton(
  onPressed: ()=>_navigateToNextScreenRegistrame(context),
  child: Icon(Icons.home_sharp),
  ),
  drawer: Drawer(
              elevation: 20.0,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: 80,
                  ),
              SizedBox(
                height: 50,
                    child: Icon(Icons.account_circle_outlined)
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        title: Text('Sistemas de inscripción'),
                        onTap: ()=> _navigateToNextScreen1(context),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        title: Text('Principios Registrales'),
                        onTap: ()=> _navigateToNextScreen2(context),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        title: Text('Procedimientos Inmatriculadores'),
                        onTap: ()=> _navigateToNextScreen3(context),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                       ListTile(
                        title: Text('Asientos Registrales'),
                        onTap: ()=> _navigateToNextScreen4(context),
                      ),
                      
                    ],
                  ),
              ),




      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Image.asset('lib/src/background-2.JPG'),
      ),
    ); 
  }
   void _navigateToNextScreen1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_1()));
  }
    void _navigateToNextScreen2(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_2()));
  }
    void _navigateToNextScreen3(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_3()));
  }
  void _navigateToNextScreen4(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen_4()));
  }
   void _navigateToNextScreenRegistrame(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FormularioPage()));
  }
}