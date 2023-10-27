import 'package:flutter/material.dart';

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
  bool _isDropdownOpen = false;

  List<String> dropdownList = ['Elemento 1', 'Elemento 2', 'Elemento 3', 'Elemento 4', 'Elemento 5'];

  void toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: toggleDropdown,
            ),
          ),
          if (_isDropdownOpen)
            Positioned(
              top: 50, // Ajusta la posición vertical de la lista desplegable
              left: 0, // Ajusta la posición horizontal de la lista desplegable
              child: Container(
                width: 200, // Ancho fijo de la lista desplegable
                height: MediaQuery.of(context).size.height, // Altura al 100% de la pantalla
                color: Colors.white, // Fondo blanco
                child: ListView(
                  children: dropdownList.map((String value) {
                    return ListTile(
                      title: Text(value),
                      onTap: () {
                        // Aquí puedes agregar la lógica para manejar la selección de cada elemento de la lista
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Colegio Quipux',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 400, // Ancho deseado de la imagen
                  height: 200, // Altura deseada de la imagen
                  child: Image.asset('assets/images/quipux.png'), // Muestra la imagen debajo del texto
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
