

import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Genre { masculino, femenino }

class _RegisterPageState extends State<RegisterPage> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();
 

  String buttonMsg = "Fecha de nacimiento";
  //String _date = "";

  /*String _dateConverter(DateTime newDate){
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String dateFormatted = formatter.format(newDate);
    return dateFormatted;
  }*/
  /*void _showSelectDate() async{
    final DateTime? newDate = await showDatePicker(context: context, initialDate: DateTime(2022,8), 
                                                  firstDate: DateTime(1900,1), 
                                                  lastDate: DateTime(2022,12),
                                                  helpText: "Fecha de nacimiento");
    if(newDate !=null){
      setState(() {
        _date = _dateConverter(newDate);
        buttonMsg = "Fecha de nacimiento: ${_date.toString()}";
      });
    }
  }*/

  void _showMsg(String msg){
    final Scaffold = ScaffoldMessenger.of(context);
    Scaffold.showSnackBar(
      SnackBar(content: Text(msg),
      action: SnackBarAction(label: 'Aceptar', onPressed: Scaffold.hideCurrentSnackBar,)
      )
      );
  }

  void saveUser(User user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("user", jsonEncode(user));

  }

  void _onRegisterButtonClicked() { 
    setState(() {
      if (_password.text == _repPassword.text){

      var user = User(_name.text, _email.text, _password.text);
      saveUser(user);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
      }
      else{
        _showMsg("Las contraseñas no coinciden");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                const Image(image: AssetImage('assets/images/logo.png'),
                width: 100, height: 100,
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                const SizedBox(height: 16.0 //Para agregar un espacio
                    ),

                //NAME TEXTFIELD
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nombre'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16.0),

                //EMAIL TEXTFIELD
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16.0),

                //PASSWORD TEXTFIELD
                TextFormField(
                  controller: _password,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ingrese contraseña'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16.0),

                //RECONFIRMATION PASSWORD TEXFIELD
                TextFormField(
                  controller: _repPassword,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ingrese contraseña nuevamente'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16.0),


                //BUTTON DATE 
                /*ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    _showSelectDate();
                  },
                  child: Text(buttonMsg),
                ),*/

                //REGISTER BUTTON
                ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    _onRegisterButtonClicked();
                  },
                  child: const Text('Registrar'),
                ),


                
              ],
            ),
          ))),
    );
  }
}
