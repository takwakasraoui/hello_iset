import 'package:flutter/material.dart';
//main c'est le point de départ de l'application 
void main() {
  //runapp() sert a lancer l'interface 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Matirialapp c'est le conteneur générale de l'application qui respecte le matirial design de google 
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //sert a mettre a jour l'interface lorsqu'une donnée change 
      _counter++;
    });
  
  }
   void _decrementCounter() {
    setState(() {
      if(_counter>0)
      {
      _counter--;
      }
    });}
    void _reset() {
    setState(() {
      _counter=0;
    });}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold( //sert a fournit la structure visuelle d'une page 
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment:MainAxisAlignment.end,
        children:[
          FloatingActionButton(
            heroTag: 'dec',
            onPressed:_decrementCounter,
            child:const Icon(Icons.remove),
            ),
            const SizedBox(width:10),
            FloatingActionButton(
            heroTag: 'inc',
            onPressed:_incrementCounter,
            child:const Icon(Icons.add),
            ),
             const SizedBox(width:10),
            FloatingActionButton(
            heroTag: 'reset',
            onPressed:_reset,
            child:const Icon(Icons.refresh),
            ),

        ]
        
      ),
    );
  }
}
//lib:c'est le dossier principale qui contient le code source de l'application
//android : contient la partie specifique a Android 
//web : contient la partie specifique pour l'execution de l'app flutter dans un navigateur web 
//pubspec.yaml:contient les dépendances de l'app