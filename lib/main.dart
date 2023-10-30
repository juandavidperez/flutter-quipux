import 'package:flutter/material.dart';
import 'Materias.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Colegio Quipux'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _navigateToNuevaPantalla(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Materias()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: GestureDetector(
            onTap: () {
              _navigateToNuevaPantalla(context); // Navegar a la nueva pantalla al hacer clic en cualquier lugar
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Colegio Quipux',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Container(
                  width: 300,
                  height: 200,
                  child: Image.asset('assets/images/quipux.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
