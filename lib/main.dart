
import 'package:flutter/material.dart';
import 'package:sprindos/vistas/DetallesPOIUno.dart';


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
          body: DetallePOIUno(
          ),
        ),
      ),
    );

  }
}
