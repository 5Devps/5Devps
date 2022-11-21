import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

import 'package:turismo_colombia/repository/firebase_api.dart';

import '../models/user.dart';
import 'login_page.dart';

//PAGINA DE REGISTRO
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Genre { masculino, femenino }

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseApi _firebaseApi = FirebaseApi();
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

  void _showMsg(String msg) {
    final Scaffold = ScaffoldMessenger.of(context);
    Scaffold.showSnackBar(SnackBar(
        content: Text(msg),
        action: SnackBarAction(
          label: 'Aceptar',
          onPressed: Scaffold.hideCurrentSnackBar,
        )));
  }

  void _saveUser(User user) async {
    var result = await _firebaseApi.createUser(user);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  void _registerUser(User user) async {
    //TRAE EL REULTADO DE LA PAGINA DE REGISTRO
    var result = await _firebaseApi.registerUser(user.email, user.password);

    //ERRORES EN PANTALLA
    String msg = "";
    switch (result) {
      case "invalid-email":
        {
          msg = "El correo electrónico está mal escrito";
          _showMsg(msg);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const RegisterPage()));
        }
        break;
      case "weak-password":
        {
          msg = "Ingrese una contraseña mínimo de 6 caracteres";
          _showMsg(msg);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const RegisterPage()));
        }
        break;
      case "email-already-in-use":
        {
          msg = "El correo ya está en uso";
          _showMsg(msg);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const RegisterPage()));
        }
        break;
      case "network-request-failed":
        {
          msg = "No se pudo conectar, revise su conexión a internet";
          _showMsg(msg);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const RegisterPage()));
        }
        break;
      default:
        {
          msg = "Usuario creado con éxito";
          user.uid = result;
          _saveUser(user);
          _showMsg(
              msg); //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
        }
        break;
    }
  }

//METODO REGISTRO BOTON
  void _onRegisterButtonClicked() {
    setState(() {
      if (_password.text == _repPassword.text) {
        var user = User("", _name.text, _email.text, _password.text);
        _registerUser(user);
        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
      } else {
        _showMsg("Las contraseñas no coinciden");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 100,
                  height: 100,
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                const Text(
                  'Turismo Col',
                  style: TextStyle(
                      color: Colors.green,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
                const SizedBox(height: 16.0 //Para agregar un espacio
                    ),

                //NAME TEXTFIELD
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre',
                  ),
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

                //BUTTON DATE (A FUTURO)
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
