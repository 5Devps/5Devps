import 'package:flutter/material.dart';
import 'package:turismo_colombia/pages/home_page.dart';

import 'login_page.dart';

//PAGINA SPLASH LOGO INICIAL
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _closeSplash();
    super.initState();
  }

  Future<void> _closeSplash() async {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(
          //context, MaterialPageRoute(builder: (context) => const HomePage()));
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: (Image(
            image: AssetImage('assets/images/logo.png'),
            width: 150,
            height: 150)),
      ),
    );
  }
}
