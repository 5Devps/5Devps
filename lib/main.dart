import 'package:appejercicio/vistas/vistaprincipal.dart';
//import 'package:ejercicioclase/vistas/DetallesPOIUno.dart';
//import 'package:ejercicioclase/vistas/login.dart';
//import 'package:ejercicioclase/vistas/ListaPOI.dart';
//import 'package:ejercicioclase/vistas/vistaprincipal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Inicio());
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('imagenes/f3.fw.png')
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          //body: Login(
          //body: DetallePOIUno(
          body:VistaPrincipal(

          ),
        ),
      ),
    );

  }
}
