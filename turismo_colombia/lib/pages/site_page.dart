// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:turismo_colombia/pages/tourist_sites.dart';
import 'package:turismo_colombia/repository/rating_box.dart';

import '../models/sites.dart';


//PAGINA POI
class SitePage extends StatelessWidget {
  final Sites site;

  const SitePage({
    Key? key,
    required this.site,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 255, 255, 255),
      appBar: AppBar(
        title: Text(site.siteName),
      ),

      //BODY DE PA LA PÁGINA
      body: Center(
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
                site.siteName,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              //IMAGEN DEL SITIO
              Image.asset(
                site.urlAvatar,
                height: 300,
                width: double.infinity,
                fit: BoxFit.contain,
              ),

              //CALIFICACIÓN POR ESTRELLAS
              const RatingBox(),
              //ESPACIO
              const SizedBox(
                height: 16.0,
              ),

              //TEXTO CIUDAD, DEPARTAMENTO Y TEMPERATURA
              Text(
                site.cityName,
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                site.departmentName,
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                site.temperature,
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              //ESPACIO
              const SizedBox(
                height: 16.0,
              ),

              //TEXTO DESCRIPTIVO DEL SITIO
              Text(
                site.fullDescription,
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

      //BOTON FLOTANTE 
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
