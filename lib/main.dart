import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade300),
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
                        leading: Icon(Icons.account_circle),
                        title: Text('Drawer layout Item 1'),
                        onTap: ()=> _navigateToNextScreen1(context),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.accessibility),
                        title: Text('Drawer layout Item 2'),
                        onTap: ()=> _navigateToNextScreen2(context),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.account_box),
                        title: Text('Drawer layout Item 3'),
                        onTap: ()=> _navigateToNextScreen3(context),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                       ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text('Drawer layout Item 4'),
                        onTap: ()=> _navigateToNextScreen4(context),
                      ),
                      
                    ],
                  ),
              ),




      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(

      padding: const EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),),
        margin: const EdgeInsetsDirectional.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('AlertDialog Title'),
                      content: const Text('AlertDialog description'),
                      actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('OK'),
                    ),
                  ],
                ),)
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {
                    setState(() {
                      
                    });
                  },
                ),
                const SizedBox(width: 8),
        
        
          ],
          )
          ],
          )
          )
          )
          ]
        
        ),
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
}