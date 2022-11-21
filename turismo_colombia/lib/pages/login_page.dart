// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import 'package:turismo_colombia/pages/home_page.dart';

import 'package:turismo_colombia/pages/tourist_sites.dart';
import 'package:turismo_colombia/repository/firebase_api.dart';
import 'register_page.dart';

import '../models/user.dart';

//PAGINA LOGIN
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  User userLoad = User.Empty();

  final FirebaseApi _firebaseApi = FirebaseApi();

  @override
  void initState() {
    //_getUser();
    super.initState();
  }
  //_getUser() async{
  //SharedPreferences prefs = await SharedPreferences.getInstance();
  //Map<String, dynamic> userMap = jsonDecode(prefs.getString("user")!);
  //userLoad = User.fromJson(userMap);
  //}

  void _showMsg(String msg) {
    final Scaffold = ScaffoldMessenger.of(context);
    Scaffold.showSnackBar(
      SnackBar(
          content: Text(msg),
          action: SnackBarAction(
            label: 'Aceptar',
            onPressed: Scaffold.hideCurrentSnackBar,
          )),
    );
  }

  void _validateUser() async {
    if (_email.text.isEmpty || _password.text.isEmpty) {
      _showMsg("Debe digitar correo y contraseña");
    } else {
      var result = await _firebaseApi.loginUser(_email.text, _password.text);
      String msg = "";

      switch (result) {
        case "user-not-found":
          {
            msg = "Correo electrónico no registrado";
            _showMsg(msg);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          }
          break;
        case "invalid-email":
          {
            msg = "Correo electrónico no válido ";
            _showMsg(msg);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          }
          break;
        case "wrong-password":
          {
            msg = "Correo o contraseña inválida";
            _showMsg(msg);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          }
          break;

        case "network-request-failed":
          {
            msg = "No se pudo conectar, revise su conexión a internet";
            _showMsg(msg);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          }
          break;
        default:
          {
            msg = "Ingreso exitoso, Bienvenido ";
            _showMsg(msg);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
            //builder: (context) => const TouristSitesPage()));
          }
          break;
      }
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
                const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 100,
                  height: 100,
                ),
                const Padding(
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

                /*TextButton(
                onPressed: (){
                  //forgot password screen
                },
                child: const Text('Recuperar contraseña')


              ),*/

                ElevatedButton(
                    onPressed: () {
                      _validateUser();
                    },
                    child: const Text('Iniciar sesión')),

                Row(
                  // ignore: sort_child_properties_last
                  children: <Widget>[
                    const Text('¿No tienes una cuenta?'),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text('Registrarse'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                /*TextButton(
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
              ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
