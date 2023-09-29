import 'package:flutter/material.dart';
import 'package:dmi_moviedb_practica8_200527_flutter/common/HttpHandler.dart';
import 'package:dmi_moviedb_practica8_200527_flutter/media_list.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // Barra de navegación superior (AppBar) con un título y un botón de búsqueda
        title: Text(
          '200527 - TheMovieDb',
          style: TextStyle(fontFamily: 'Bebas', fontSize: 24),
          selectionColor: Colors.white,
        ), // Título de la aplicación
        centerTitle: true,
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
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('asset/icon/MovieTube_Logo.png'))),
                ),
              )),
              ListTile(
                leading: Icon(Icons.local_movies),
                title: Text('Peliculas',
                    style: TextStyle(fontFamily: 'Bebas', fontSize: 24)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.live_tv),
                title: Text('Television',
                    style: TextStyle(fontFamily: 'Bebas', fontSize: 24)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Cerrar',
                    style: TextStyle(fontFamily: 'Bebas', fontSize: 24)),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          ),
        ),
      ),
      body: PageView(
        children: <Widget>[MediaList()],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: GNav(
          padding: EdgeInsets.only(right: 12, left: 12, bottom: 25, top: 25),
          gap: 5,
          tabBackgroundColor: Colors.grey.shade800,
          tabMargin: EdgeInsets.all(3),
          textStyle: TextStyle(
              fontFamily: 'Bebas', fontSize: 20, color: Colors.tealAccent),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Inicio',
            ),
            GButton(
              icon: Icons.trending_up,
              text: 'Populares',
            ),
            GButton(
              icon: Icons.flip_camera_android,
              text: 'Proximamente',
            ),
            GButton(
              icon: Icons.favorite_border_outlined,
              text: 'Mejor Valoradas',
            ),
          ],
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.tealAccent,
        ),
      ),
    );
  }

  // Método para obtener los elementos de la barra de navegación inferior
  List<BottomNavigationBarItem> _obtenerIconos() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.thumb_up), // Icono de pulgar hacia arriba
        label: ("populares"), // Etiqueta para la opción "populares"
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.update), // Icono de actualización
        label: ("Proximamente"), // Etiqueta para la opción "Proximamente"
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.star), // Icono de estrella
        label: ("Mejor valorados"), // Etiqueta para la opción "Mejor valorados"
      ),
    ];
  }
}
