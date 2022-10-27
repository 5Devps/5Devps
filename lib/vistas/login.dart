import 'package:appejercicio/vistas/ListaPOI.dart';
import 'package:appejercicio/vistas/tituloprincipal.dart';
//import 'package:ejercicioclase/vistas/ListaPOI.dart';
//import 'package:ejercicioclase/vistas/tituloprincipal.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usuario=TextEditingController();
  final clave=TextEditingController();
  String usu="";
  String cla="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('imagenes/f3.fw.png')
          )
        ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.all(2),
            child: ListView(
              children: [
                Container(
                  child: Titulo(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: const Text("Login",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'titulo',
                      color: Colors.greenAccent,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.all(20),
                ),
                Xusuario(),
                Xclave(),
                btnlogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container Xusuario() {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        color: Colors.white,
      child: TextFormField(
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'texto',
          color: Colors.indigo,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Usuario'
        ),
        controller: usuario,
      ),
    );
  }

  Container Xclave() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      color: Colors.white,
      child: TextFormField(
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'texto',
          color: Colors.indigo,
        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Clave'
        ),
        controller: clave,
      ),
    );
  }

  ElevatedButton btnlogin(){
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.teal,
      ),
      child: Text('Ingresar',
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'texto',
          color: Colors.indigo,
        ),
      ),
      onPressed: (){
        usu=usuario.text;
        cla=clave.text;
        if(usu=='pepe' && cla=='123'){
          print(usu);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListaPOI()));
        }
      },
    );

  }
}
