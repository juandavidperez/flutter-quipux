import 'package:flutter/material.dart';

class NuevaPantalla extends StatefulWidget {
  @override
  _NuevaPantallaState createState() => _NuevaPantallaState();
}

class _NuevaPantallaState extends State<NuevaPantalla> {
  List<String> dropdownList = ['Estudiantes', 'Grupos', 'Materias', 'Evaluaciones', 'Informes'];
  int _selectedIndex = 2; // Inicialmente seleccionado materias
  bool _isDropdownOpen = false;

  void handleSelection(int index) {
    setState(() {
      _selectedIndex = index; // Actualiza el índice seleccionado
    });
  }

  void toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva Pantalla'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¡Bienvenido a la Nueva Pantalla!',
                  style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Botón en la Nueva Pantalla'),
                ),
              ],
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
