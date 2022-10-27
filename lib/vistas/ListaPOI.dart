import 'package:appejercicio/vistas/tituloprincipal.dart';
//import 'package:ejercicioclase/vistas/tituloprincipal.dart';
import 'package:flutter/material.dart';


class ListaPOI extends StatefulWidget {
  const ListaPOI({Key? key}) : super(key: key);

  @override
  State<ListaPOI> createState() => _ListaPOIState();
}

class _ListaPOIState extends State<ListaPOI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image:AssetImage('imagenes/f3.fw.png')
      ),
    ),
        child:Scaffold(
          body: ListView(
            children: [
              Container(
                child: Titulo(),
              ),
              Container(
                  child: Text("Puntos de Interes",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'titulo',
                      color: Colors.greenAccent,
                  ),
            textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(20),
              ),

              Container(
                color: Colors.indigo.shade300,
                  child: const ListTile(
                    title: Text('Casa Francisco José de Caldas'),
                    subtitle: Text('es posible seguir las huellas de la Expedición Botánica que dirigió José Celestino Mutis...'),
                    leading: Icon(
                      Icons.add_location_alt_sharp,
                      color: Colors.green,
                    ),
                  ),
                ),


              Container(
                color: Colors.indigo.shade300,
                margin: EdgeInsets.only(top: 8),
                  child: const ListTile(
                    title: Text('Titulo de lista'),
                    subtitle: Text('contenido'),
                    leading: Icon(
                      Icons.add_location_alt_sharp,
                      color: Colors.green,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
