import 'package:flutter/material.dart';

class DetallePOIUno extends StatefulWidget {
  const DetallePOIUno({Key? key}) : super(key: key);

  @override
  State<DetallePOIUno> createState() => _DetallePOIUnoState();
}

class _DetallePOIUnoState extends State<DetallePOIUno> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.blue,
          child:Text("Detalles Sitio Turistico El Peñón de Guatapé",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'texto',
              color: Colors.white,
            ),
          ),
          padding: EdgeInsets.all(17),
        ),

        Container(
          color: Colors.transparent,
          child:Text("El Peñón de Guatapé",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              fontFamily: 'titulo',
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.only(top: 37,left: 20,right: 20),
        ),

        Container(
          color: Colors.transparent,
          child:Image.asset('imagenes/POIUno.png'),
          padding: EdgeInsets.only(top: 20),
          height: 300,
          width: 300,
        ),

        Container(
          color: Colors.black26,
          child:Text("Municipio: Guatapé \n"  "Departamento: Antioquia \n" "Temperatura: min 14° / max 23° \n" "\nConocido también como “La piedra del Peñol”. Es un monolito de 220 metros de altura. \nUna maravilla de la naturaleza, desde donde se puede ver la panorámica del embalse de más de 2.200 hectáreas de extensión, que consta de varias islas en tonos verdes rodeadas de aguas tranquilas",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.normal,
              fontFamily: 'texto',
              color: Colors.white,
            ),
            //textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
          margin: EdgeInsets.only(top: 20),
        ),
      ],
    );
  }
}
