import 'package:flutter/material.dart';

void main() {
  //Firebase
  //........
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // WIDGET(property1:x, property2:y, property3:WIDGET(property1x1))

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // --> Uygulamnın giriş noktasıdır.
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//Stateful
class MyHomePage extends StatefulWidget {
  // Backend işlemleri
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // --> private
  int counter = 0; // --> public

  void _incrementCounter() {
    setState(() {
      // --> state'i uygulama içinde değiştirmek için kullanılır

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --> kök ağaç yapısı için
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
