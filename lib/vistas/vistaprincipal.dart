import 'package:appejercicio/vistas/login.dart';
import 'package:appejercicio/vistas/tituloprincipal.dart';
//import 'package:ejercicioclase/vistas/login.dart';
//import 'package:ejercicioclase/vistas/tituloprincipal.dart';
import 'package:flutter/material.dart';

class VistaPrincipal extends StatefulWidget {
  const VistaPrincipal({Key? key}) : super(key: key);

  @override
  State<VistaPrincipal> createState() => _VistaPrincipalState();
}

class _VistaPrincipalState extends State<VistaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Titulo(),
        ),

        Expanded(
        child:Container(
          color: Colors.orange,
          height: 50,
          width: 160,
          margin: EdgeInsets.only(bottom: 50),
          child: botonSomos(),
          ),
        ),

        Expanded(
          child: Container(
            color: Colors.lime,
            height: 50,
            width: 160,
            margin: EdgeInsets.only(bottom: 50),
            child: botonLogin(),
          ),
        ),

        Expanded(
          child: Container(
            color: Colors.deepPurpleAccent,
            height: 50,
            width: 160,
            margin: EdgeInsets.only(bottom: 50),
            child: botonRegistrate(),
          ),
        ),
      ],
    );
  }

  //WIDGET PARA HACER LOS BOTONES
  ElevatedButton botonSomos(){
  return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.pink,
      ),
    child: Text('Quienes \n Somos',
    style: TextStyle(
      fontFamily: 'texto',
      fontSize: 30,
      color: Colors.white
    ),
    ),
    onPressed: (){
        print("Boton somos");
    },
  );
  }

  ElevatedButton botonLogin(){
    return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.transparent
      ),
      child: Text('Login',
        style: TextStyle(
            fontFamily: 'texto',
            fontSize: 30,
            color: Colors.white
        ),
      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      },
    );
  }

  ElevatedButton botonRegistrate(){
    return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.transparent
      ),
      child: Text('Registrate',
        style: TextStyle(
            fontFamily: 'texto',
            fontSize: 30,
            color: Colors.white
        ),
      ),
      onPressed: (){
        print("Boton Registrate");
      },
    );
  }

  Widget botonLogo(){
    return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.transparent
      ),
      child: Text('',
        style: TextStyle(
            fontFamily: 'texto',
            fontSize: 30,
            color: Colors.white
        ),
      ),
      onPressed: (){
        print("Boton logo");
      },
    );
  }
}
