import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Materias extends StatefulWidget {
  @override
  _MateriasState createState() => _MateriasState();
}

class _MateriasState extends State<Materias> {
  List<String> dropdownList = ['Estudiantes', 'Grupos', 'Materias', 'Evaluaciones', 'Informes'];
  List<String> dropdownList2 = ['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5'];
  int _selectedIndex = 2; // Inicialmente seleccionado materias
  int _selectedIndex2 = -1; // Inicialmente no seleccionado
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
        title: Text('Materias'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //un rectangulo blanco  cuya altura es 50 con un texto
                Container(
  height: 80,
  width: MediaQuery.of(context).size.width-100,
  margin: EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 20),
  color: Colors.white,
  child: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // DropdownButton con texto arriba
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Grado'),
            ),
            DropdownButton(
              value: _selectedIndex2 == -1 ? null : dropdownList2[_selectedIndex2],
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedIndex2 = dropdownList2.indexOf(newValue!);
                });
              },
              items: dropdownList2.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),

        // DropdownButton con texto arriba
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Grupo'),
            ),
            DropdownButton(
              value: _selectedIndex2 == -1 ? null : dropdownList2[_selectedIndex2],
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedIndex2 = dropdownList2.indexOf(newValue!);
                });
              },
              items: dropdownList2.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),

        // DropdownButton con texto arriba
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Materia'),
            ),
            DropdownButton(
              value: _selectedIndex2 == -1 ? null : dropdownList2[_selectedIndex2],
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedIndex2 = dropdownList2.indexOf(newValue!);
                });
              },
              items: dropdownList2.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),

        // DropdownButton con texto arriba
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Profesor'),
            ),
            DropdownButton(
              value: _selectedIndex2 == -1 ? null : dropdownList2[_selectedIndex2],
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedIndex2 = dropdownList2.indexOf(newValue!);
                });
              },
              items: dropdownList2.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ), 

        ElevatedButton(
          onPressed: () {
          // Aquí colocas la lógica que quieres ejecutar al presionar el botón
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Color de fondo del botón
            onPrimary: Colors.white, // Color del texto del botón
            textStyle: TextStyle(fontSize: 16), // Estilo del texto del botón
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Ajuste el padding según tus preferencias
          ),
          child: Text('Buscar'),
        ),

        GestureDetector(
          onTap: () {
          // Agrega la lógica que deseas ejecutar al tocar el enlace
          },
          child: Text(
          'Limpiar filtros',
          style: TextStyle(
            color: Colors.blue, // Color del texto del enlace
            decoration: TextDecoration.underline, // Añade subrayado al texto del enlace
            ),
          ),
        ),
      ],
    ),
  ),
),
                // Aquí va el código de la tabla que deseas mostrar
                Expanded(
                child: SingleChildScrollView(
                  child:
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  margin: EdgeInsets.only(left: 25, right: 25, bottom: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 20, top: 20),
                        child: Text(
                          'Resultados',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      // Aquí va el código de la tabla que deseas mostrar
                      Table(
                        columnWidths: {
                        0: FlexColumnWidth(1.0), // Columna 1
                        1: FlexColumnWidth(2.0), // Columna 2
                        2: FlexColumnWidth(3.0), // Columna 3
                        3: FlexColumnWidth(2.0), // Columna 4
                        4: FlexColumnWidth(1.0), // Columna 5
                        },
                        border: TableBorder.all(color: Colors.white),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(
                decoration: BoxDecoration(
                  color: Color(0xFF016691),
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Código',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Materia',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Profesor',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Grado',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Acciones',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.white),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('SOC001'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Geografía'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Fabio León Restrepo'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('6, 7, 8, 9, 10, 11'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-show.svg', 
                            semanticsLabel: 'Show',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-trash.svg', 
                            semanticsLabel: 'Trash',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.white),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('SOC002'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Historia'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Jaime Alberto Giraldo'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('6, 7, 8'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-show.svg',
                            semanticsLabel: 'Show',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-trash.svg',
                            semanticsLabel: 'Trash',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.white),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('SOC003'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Filosofia'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Adriana María Zuluaga'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('9, 10, 11'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-show.svg',
                            semanticsLabel: 'Show',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-trash.svg',
                            semanticsLabel: 'Trash',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.white),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('IDM001'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Español'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Fabiola Ramírez'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('6, 7, 8, 9, 10, 11'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-show.svg',
                            semanticsLabel: 'Show',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-trash.svg',
                            semanticsLabel: 'Trash',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.white),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('IDM003'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Inglés'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('María Dolores Smicth'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('6, 7, 8, 9, 10, 11'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-show.svg',
                            semanticsLabel: 'Show',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/images/ic-trash.svg',
                            semanticsLabel: 'Trash',),
                            onPressed: () {
                              // Perform action
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
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
