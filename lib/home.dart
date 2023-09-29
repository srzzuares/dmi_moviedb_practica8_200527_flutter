import 'package:flutter/material.dart';
import 'package:dmi_moviedb_practica8_200527_flutter/common/HttpHandler.dart';
import 'package:dmi_moviedb_practica8_200527_flutter/media_list.dart';
class Home extends StatefulWidget {
  const Home(
      {super.key}); // Constructor de Home con un parámetro opcional llamado key.
  @override
  State<Home> createState() =>
      _HomeState(); // Define una clase que extiende StatefulWidget y proporciona un método para crear su estado interno.
}

class _HomeState extends State<Home> {
  // Define una clase que extiende State y representa el estado interno de Home.
  
  // Estilo de fuente personalizado
  final TextStyle customTextStyle = const TextStyle(
    fontFamily: 'MiFuente', // Nombre de la fuente definido en pubspec.yaml
    fontSize: 16.0, // Tamaño de fuente deseado
    fontWeight: FontWeight
        .bold, // Puedes ajustar el peso de la fuente según tus preferencias
  );

  @override
  Widget build(BuildContext context) {
    // Crear una página Scaffold que contiene la estructura principal de la aplicación
    return  Scaffold(
      appBar:  AppBar(
        // Barra de navegación superior (AppBar) con un título y un botón de búsqueda
        title: const Text("MovieApp-200327"), // Título de la aplicación
        actions: <Widget>[
           IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Acción a ejecutar cuando se presiona el botón de búsqueda
            },
          ),
        ],
      ),
      drawer:  Drawer(
        // Menú lateral (Drawer) que se despliega desde el borde izquierdo
        child:  ListView(children: <Widget>[
           const DrawerHeader(
              child:  Material()), // Encabezado del menú lateral

          // Elemento del menú "peliculas"
           ListTile(
            title:  Text(
              "peliculas",
              style:
                  customTextStyle, // Aplica el estilo de fuente personalizado
            ),
            trailing: const Icon(Icons.local_movies), // Icono de películas
          ),

          // Separador en el menú
           const Divider(
            height: 5.0,
          ),

          // Elemento del menú "Television"
           ListTile(
            title:  Text(
              "Television",
              style:
                  customTextStyle, // Aplica el estilo de fuente personalizado
            ),
            trailing: const Icon(Icons.live_tv), // Icono de televisión
          ),

          // Separador en el menú
           const Divider(
            height: 5.0,
          ),

          // Elemento del menú "Cerrar"
           ListTile(
            title:  Text(
              "Cerrar",
              style:
                  customTextStyle, // Aplica el estilo de fuente personalizado
            ),
            trailing: const Icon(Icons.live_tv), // Icono de televisión
            onTap: () => Navigator.of(context)
                .pop(), // Cierra el menú al tocar este elemento
          ),
        ]),
      ),
      body: PageView(
        children: <Widget>[
           MediaList()
        ],
      ),
      bottomNavigationBar:  BottomNavigationBar(
        // Barra de navegación inferior (BottomNavigationBar) con iconos y etiquetas
        items: _obtenerIconos(),
      ),
    );
  }

  // Método para obtener los elementos de la barra de navegación inferior
  List<BottomNavigationBarItem> _obtenerIconos() {
    return const [
       BottomNavigationBarItem(
        icon:  Icon(Icons.thumb_up), // Icono de pulgar hacia arriba
        label: ("populares"), // Etiqueta para la opción "populares"
      ),
       BottomNavigationBarItem(
        icon:  Icon(Icons.update), // Icono de actualización
        label: ("Proximamente"), // Etiqueta para la opción "Proximamente"
      ),
       BottomNavigationBarItem(
        icon:  Icon(Icons.star), // Icono de estrella
        label: ("Mejor valorados"), // Etiqueta para la opción "Mejor valorados"
      ),
    ];
  }
}
