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
          padding: const EdgeInsets.all(17),
          child:const Text("PUNTO RECOMENDADO DEL DÍA",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'texto',
              color: Colors.white,
            ),
          ),
        ),

        Container(
          color: Colors.green,
          padding: const EdgeInsets.only(top: 37,left: 20,right: 20),
          child:const Text("Detalles Casa Francisco José de Caldas",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              fontFamily: 'titulo',
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Container(
          color: Colors.transparent,
          padding: const EdgeInsets.only(top: 20),
          height: 300,
          width: 300,
          child:Image.asset('assets/images/POIUno.png'),
        ),

        Container(
          color: Colors.white70,
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
          margin: const EdgeInsets.only(top: 20),
          child:const Text("Municipio: Popayan \n"  "Departamento: Cauca \n" "Temperatura: min 14° / max 25° \n" "\nEn Popayán, es posible seguir las huellas de la Expedición Botánica que dirigió José Celestino Mutis al visitar la Casa Museo Francisco José de Caldas. Allí, donde habitó el hombre de ciencia y prócer de la Independencia Francisco José de Caldas, se conservan, entre otras cosas, una muestra del molino de trigo.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'texto',
              color: Colors.black,
            ),
            //textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
