import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Scrum Elements - Josué Miguel Ortiz Meza - GDS0551',
            style: TextStyle(
              color: Colors.white, // Color del texto
              fontSize: 24.0, // Tamaño del texto
              fontWeight: FontWeight.bold, // Negrita
            ),
          ),
          centerTitle: true, // Centrar el título
          backgroundColor: Colors.blue, // Color de fondo
          elevation: 0, // Eliminar sombra
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: JsonListViewScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
