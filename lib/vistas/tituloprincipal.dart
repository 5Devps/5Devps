import 'package:flutter/material.dart';

class Titulo extends StatefulWidget {
  const Titulo({Key? key}) : super(key: key);

  @override
  State<Titulo> createState() => _TituloState();
}

class _TituloState extends State<Titulo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 250,
          height: 100,
          color: Colors.transparent,
          margin: EdgeInsets.only(top: 50),
          child: Text('ViajApp',
            style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: 'titulo',
                color: Colors.greenAccent
            ),
            textAlign: TextAlign.center,
          ),

        ),
        Container(
          width: 110,
          height: 100,
          margin: EdgeInsets.only(top: 22),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imagenes/log_pop-fon.fw.png')
            ),
          ),
        )
      ],
    );
  }
}
