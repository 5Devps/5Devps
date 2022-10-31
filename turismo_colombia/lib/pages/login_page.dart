

import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:turismo_colombia/pages/DetallesPOIUno.dart';
import 'register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final _email = TextEditingController();
final _password = TextEditingController();

User userLoad = User.Empty();

  @override
  void initState(){
    _getUser();
    super.initState();
  }
    _getUser() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      Map<String, dynamic> userMap = jsonDecode(prefs.getString("user")!);
      userLoad = User.fromJson(userMap);
    }

    void _showMsg(String msg){
    final Scaffold = ScaffoldMessenger.of(context);
    Scaffold.showSnackBar(
      SnackBar(content: Text(msg),
      action: SnackBarAction(label: 'Aceptar', onPressed: Scaffold.hideCurrentSnackBar,)
      ),
      );
  }

  void _validateUser(){
    if(_email.text == userLoad.email && _password == userLoad.password){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
      
    }else{
      _showMsg("Correo o contraseña incorrecta");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        child: Center(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
              const Image(
                image: AssetImage('assets/images/logo.png'),
                width: 100, height: 100,
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),

              //EMAIL BOX
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Correo electrónico'),
                keyboardType: TextInputType.emailAddress,
              ),

              //PASSWORD
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Contraseña'),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 16.0,
              ),

              ElevatedButton(
                  onPressed: () {
                    _validateUser();
                  }, child: const Text('Iniciar sesión')),

              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()));
                },
                child: const Text('Registrese'),
              ),

              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DetallePOIUno()));
                },
                child: const Text('Point of interest'),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
