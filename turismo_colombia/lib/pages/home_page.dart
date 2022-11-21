import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:turismo_colombia/pages/login_page.dart';

import 'package:turismo_colombia/pages/search_page.dart';
import 'package:turismo_colombia/pages/tourist_sites.dart';

import 'favorites_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //METODOS PARA  SELECCIÓN PAGINAS EN EL NAVIGATION BAR
  var currentPage = 0; //INDICE DE PAGINA ACTUAL
  late List<Widget> pages;

  @override
  void initState() {
    _loadPage();
    super.initState();
  }

// METODO DE PAGINAS PARA MOSTRAR
  void _loadPage() {
    pages = [];
    pages.add(const TouristSitesPage());
    //pages.add(const LoginPage());
    pages.add(const FavoritesPage());
  }

//METODO  QUE MUESTRA  PAGINA ACTUAL
  void _onItemTapped(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar( title: const Text("Mis sitios"),
      //actions: [],
      //),

      //INDICE DE PAGINAS
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (page) {
          _onItemTapped(page);
        },

        //PAGINA MIS SITIOS CON ICONO
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.mapPin, size: 20),
              label: "Mis sitios"),

          //PAGINA DE BUSCAR (A FUTURO)
          /*BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.personWalkingArrowLoopLeft, size: 20),
              label: "Logout"),*/

          //PAGINA MIS FAVORITOS CON ICONO
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart, size: 20), label: "Favoritos"),
        ],
      ),
    );
  }
}
