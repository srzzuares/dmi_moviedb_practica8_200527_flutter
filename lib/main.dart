import 'package:flutter/material.dart';
import 'package:dmi_moviedb_practica8_200527_flutter/home.dart';

   void main() {
  // Función principal del programa
  runApp( MaterialApp(
    // Inicializa la aplicación Flutter
    debugShowCheckedModeBanner:
        false, // Desactiva la etiqueta de depuración en la esquina superior derecha de la aplicación
    home:
        const Home(), // Define la pantalla de inicio de la aplicación como una instancia de la clase Home
    theme:  ThemeData
        .dark(), // Establece el tema de la aplicación como un tema oscuro
  ));
}