// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:turismo_colombia/boxes.dart';
import 'package:turismo_colombia/models/place.dart';
import 'package:turismo_colombia/models/sites_adapter.dart';
import 'package:turismo_colombia/pages/geolocation.dart';

import 'package:turismo_colombia/pages/tourist_sites.dart';
import 'package:turismo_colombia/repository/rating_box.dart';

import '../models/sites.dart';

//PAGINA POI
class SitePage extends StatefulWidget {
  final Sites site;

  const SitePage({
    Key? key,
    required this.site,
  }) : super(key: key);

  @override
  State<SitePage> createState() => _SitePageState();
}

class _SitePageState extends State<SitePage> {
  //METODO FAVORITOS
  var isFavorite = false;

  @override
  void initState() {
    // TODO: implement initState
    _getPageState();
    super.initState();
  }

  void _getPageState() {
    final box = Boxes.getFavoritesBox();
    box.values.forEach((element) {
      if (element.siteName == widget.site.siteName) {
        isFavorite = true;
      }
    });
  }

  void _favorites() async {
    var favoritesSites = SiteAdapter()
      ..siteName = widget.site.siteName
      ..cityName = widget.site.cityName
      ..temperature = widget.site.temperature
      ..description = widget.site.description
      ..urlAvatar = widget.site.urlAvatar;

    final box = Boxes.getFavoritesBox();
    //box.add(favoritesSites);

    if (isFavorite) {
      box.delete(favoritesSites.siteName);
    } else {
      box.put(favoritesSites.siteName, favoritesSites);
    }
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  //PANTALLA
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 255, 255, 255),
      appBar: AppBar(
        title: Text(widget.site.siteName),
      ),

      //BODY DE PA LA PÁGINA
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                // INICIO DE ESPACIO
                const SizedBox(
                  height: 16.0,
                ),
                //FIN ESPACIO

                //TITULO DEL SITIO
                Text(
                  widget.site.siteName,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),

                //IMAGEN DEL SITIO
                Image.asset(
                  widget.site.urlAvatar,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),

                //ICONO FAVORITOS
                IconButton(
                  icon:
                      Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                  color: Colors.blue,
                  onPressed: (() {
                    _favorites();
                  }),
                ),

                //ICONO MAPAS (TESTEO A FUTURO)
                /*IconButton(
                      icon: Icon(Icons.map_outlined),
                      color: Colors.blue,
                      onPressed: (() {
                        //_favoritesDelete();
                      }),
                    ),*/

                /*const SizedBox(
                    height: 16.0,
              ),*/

                //ICONO FAVORITOS (TEST A FUTURO)
                /*Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            alignment: Alignment.topRight,
                            icon: const Icon(Icons.favorite_border),
                            color: Colors.red,
                            onPressed: (() {
                              Fluttertoast.showToast(
                                  msg: "Tu favorito",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.CENTER);
                              _favorites();
                            }),
                          ),
                        )
                      ],
                    ),*/

                //CALIFICACIÓN POR ESTRELLAS
                const RatingBox(),
                //const PlacesMapPage(),

                //ESPACIO
                const SizedBox(
                  height: 16.0,
                ),

                //TEXTO CIUDAD,
                Text(
                  widget.site.cityName,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),

                // TEXTO DEPARTAMENTO
                Text(
                  widget.site.departmentName,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),

                //TEXTO TEMPERATURA
                Text(
                  widget.site.temperature,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),

                //TEXTO Y ENLACE A MAPS
                ListTile(
                  title: const Text(
                    'Mapa',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Place place = Place(
                        widget.site.siteName,
                        widget.site.address,
                        widget.site.urlMaps,
                        widget.site.latitud,
                        widget.site.longitud);
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => Geolocation(place)));
                  },
                ),

                //ESPACIO
                const SizedBox(
                  height: 16.0,
                ),

                //TEXTO DESCRIPTIVO DEL SITIO
                Text(
                  widget.site.fullDescription,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //BOTON FLOTANTE (FUNCIONALIDAD VOLVER AL INICIO)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const TouristSitesPage()));
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
