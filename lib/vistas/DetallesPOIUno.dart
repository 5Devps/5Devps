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
          child:Text("Detalles Casa Francisco José de Caldas",
            style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'texto',
            color: Colors.white,
                ),
              ),
            padding: EdgeInsets.all(17),
            ),

        Container(
          color: Colors.transparent,
          child:Text("Casa Francisco José de Caldas",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              fontFamily: 'titulo',
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.only(top: 17,left: 20,right: 20),
        ),

        Container(
          color: Colors.transparent,
          child:Image.asset('imagenes/POIUno.png'),
          padding: EdgeInsets.only(top: 20),
          height: 240,
          width: 280,
        ),

        Container(
          color: Colors.black38,
          child:Text("Municipio: Popayán \n"  "Departamento: Cauca \n" "Temperatura: min 14° / max 25° \n" "\nEn Popayán, es posible seguir las huellas de la Expedición Botánica que dirigió José Celestino Mutis al visitar la Casa Museo Francisco José de Caldas. Allí, donde habitó el hombre de ciencia y prócer de la Independencia Francisco José de Caldas, se conservan, entre otras cosas, una muestra del molino de trigo.",
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
