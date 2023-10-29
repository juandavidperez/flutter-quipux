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
  int _selectedIndex = -1; // Inicialmente ningún elemento seleccionado

  List<String> dropdownList = ['Estudiantes', 'Grupos', 'Materias', 'Evaluaciones', 'Informes'];

  void toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  void handleSelection(int index) {
    setState(() {
      _selectedIndex = index; // Actualiza el índice seleccionado
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
            color: Colors.white, // Color de fondo blanco
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Colegio Quipux',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Container(
                    width: 300, // Ancho deseado de la imagen
                    height: 200, // Altura deseada de la imagen
                    child: Image.asset('assets/images/quipux.png'), // Muestra la imagen debajo del texto
                  ),
                ],
              ),
            ),
          ),
          if (_isDropdownOpen)
            Positioned(
              top: 50, // Ajusta la posición vertical de la lista desplegable
              left: 0, // Ajusta la posición horizontal de la lista desplegable
              child: Container(
                width: 200, // Ancho fijo de la lista desplegable
                height: MediaQuery.of(context).size.height, // Altura al 100% de la pantalla
                color: Color(0xFF6A737C), // Color de fondo predeterminado
                child: ListView(
                  children: dropdownList.asMap().entries.map((entry) {
                    int index = entry.key;
                    String value = entry.value;
                    return Container(
                      color: _selectedIndex == index ? Color(0xFFC8CCD0) : Color(0xFF6A737C),
                      child: ListTile(
                        title: Text(
                          value,
                          style: TextStyle(
                            color: _selectedIndex == index ? Color(0xFF555A5E) : Colors.white,
                          ),
                        ),
                        onTap: () {
                          handleSelection(index);
                          // Aquí puedes agregar la lógica para manejar la selección de cada elemento de la lista
                          setState(() {
                            _isDropdownOpen = false;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: toggleDropdown,
            ),
          ),
        ],
      ),
    );
  }
}
